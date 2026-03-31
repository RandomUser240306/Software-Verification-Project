import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Parser {
    public static List<Edge> parseLLVM(String filename) throws FileNotFoundException {
        Scanner sc = new Scanner(new File(filename));
        ArrayList<Edge> graph = new ArrayList<>();
        while(sc.hasNextLine()) {
            String line = sc.nextLine();
            if(line.contains("define")) {
                String caller = line.substring(line.indexOf('@')+1,line.indexOf('('));
                for(line = sc.nextLine(); !line.contains("}"); line = sc.nextLine()) {
                    if(line.contains("@")) {
                        if(line.contains("call ")) graph.add(new Edge(caller, line.substring(line.indexOf('@')+1, line.indexOf('(', line.indexOf('@')))));
                        else graph.add(new Edge(caller, line.substring(line.indexOf('@')+1, line.indexOf(',', line.indexOf('@')))));
                    }
                }
            }
        }
        return graph;
    }


}