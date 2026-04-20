int m;

void task1() {
    // m++; //write
    if(m) {
        //read
        int y = m;
    }
}

void task2() {
    // m++; //write
    if(m) {
        //read
        int y = m;
    }
}


int main() {
    OS_AddThread(&task1, 128, 1);
    OS_AddThread(&task2, 128, 1);
    while(1);
}