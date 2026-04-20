package src;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class Parser {
    public static CallGraph parseLLVM() throws FileNotFoundException {
        File folder = new File("llvm/");
        File[] listOfFiles = folder.listFiles();
        ArrayList<Edge> graph = new ArrayList<>();
        Set<String> starts = new HashSet<String>();
        for (File file : listOfFiles) {
            if (file.isFile()) {
                Scanner sc = new Scanner(file);
                while(sc.hasNextLine()) {
                    String line = sc.nextLine();
                    if(line.contains("define")) {
                        String caller = line.substring(line.indexOf('@')+1,line.indexOf('('));
                        if(caller.contains("Handler")) starts.add(caller);
                        for(line = sc.nextLine(); !line.equals("}"); line = sc.nextLine()) {
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
                starts.add("main"); //duh
                System.out.println(starts.toString());
            }
        }
        return new CallGraph(starts, graph);
    }
        


}