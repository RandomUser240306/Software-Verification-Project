int m;

void task1() {
    // m++; //write
    // if(m) {
    //     //read
    //     int y = m;
    // }
}

void task2() {
    // m++; //write
    // if(m) {
    //     //read
    //     int y = m;
    // }
}

void notTask1() {
    m--; //write
}

void notTask2() {
    m++; //write
}


int main() {
    OS_AddThread(&task1, 128, 1);
    OS_AddThread(&task2, 128, 1);
    notTask1();
    notTask2();
    while(1);
}