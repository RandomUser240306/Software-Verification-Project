import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class Parser {
    public static CallGraph parseLLVM(String filename) throws FileNotFoundException {
        Scanner sc = new Scanner(new File(filename));
        ArrayList<Edge> graph = new ArrayList<>();
        Set<String> starts = new HashSet<String>();
        while(sc.hasNextLine()) {
            String line = sc.nextLine();
            if(line.contains("define")) {
                String caller = line.substring(line.indexOf('@')+1,line.indexOf('('));
                if(caller.contains("Handler")) starts.add(caller);
                for(line = sc.nextLine(); !line.contains("}"); line = sc.nextLine()) {
                    if(line.contains("@")) {
                        if(line.contains("call ")) {
                            if((line.contains("@OS_AddThread") || line.contains("@OS_AddPeriodicThread") || line.contains("@OS_AddS2Task") || line.contains("@OS.AddS1Task") || line.contains("@OS.AddPA28Task")) && !line.contains("ptr noundef %"))
                                starts.add(line.substring(line.indexOf("ptr noundef ") + 13, line.indexOf(",", line.indexOf("ptr noundef"))));
                            graph.add(new Edge(caller, line.substring(line.indexOf('@')+1, line.indexOf('(', line.indexOf('@'))), ReferenceType.CALL));
                        }
                        else if(line.contains("store")) graph.add(new Edge(caller, "#data" + line.substring(line.indexOf('@')+1, line.indexOf(',', line.indexOf('@'))), ReferenceType.WRITE));
                        else graph.add(new Edge(caller, "#data" + line.substring(line.indexOf('@')+1, line.indexOf(',', line.indexOf('@'))), ReferenceType.READ));
                    }
                }
            }
        }
        System.out.println(starts.toString());
        return new CallGraph(starts, graph);
    }


}