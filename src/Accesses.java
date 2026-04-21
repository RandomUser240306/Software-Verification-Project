package src;

import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.Map;

public class Accesses {
    public static Map<String, Map<String, Integer>> getAccesses() throws FileNotFoundException {
        CallGraph graph = Parser.parseLLVM();
        CallGraph osGraph = Parser.parseLLVM();
        graph.startingPoints.addAll(osGraph.startingPoints);
        graph.references.addAll(osGraph.references);
        List<Edge> edges = graph.references;
        //Get ordered list of nodes
        Set<String> n = new HashSet<>();
        for(Edge e : edges) {
            n.add(e.from);
            n.add(e.to);
        }
        List<String> nodes = new ArrayList<>(n);
        //construct adjacency matrix from graph
        int[][] mat = new int[nodes.size()][nodes.size()];
        for(Edge e : edges) {
            int newType = e.type==ReferenceType.WRITE ? 2 : 1;
            int currType = mat[nodes.indexOf(e.from)][nodes.indexOf(e.to)];
            if(newType > currType) mat[nodes.indexOf(e.from)][nodes.indexOf(e.to)] = newType;
        }
        ArrayList<ArrayList<Integer>> reachableLocations = Reachable.transitiveClosure(mat);

        // for(String startingPoint : graph.startingPoints) {
        //     int i = nodes.indexOf(startingPoint);
        //     if(i<0) continue;
        //     if(!nodes.get(i).contains("#data")) {
        //         System.out.println("Starting Point: " + nodes.get(i));
        //         System.out.println("Accessed Locations:");
        //         for(int j=0; j<reachableLocations.get(i).size(); j++) {
        //             if(reachableLocations.get(i).get(j)==1 && nodes.get(j).contains("#data")) {
        //                 System.out.println("\t" + nodes.get(j).substring(5) + " - Read");
        //             }
        //             if(reachableLocations.get(i).get(j)==2 && nodes.get(j).contains("#data")) {
        //                 System.out.println("\t" + nodes.get(j).substring(5) + " - Write");
        //             }
                    
        //         }
        //     }
        // }
        Map<String, Map<String, Integer>> possibleAccesses = new HashMap<>();
        for(int i=0; i<nodes.size(); i++) {
            if(nodes.get(i).contains("#data")) {
                possibleAccesses.put(nodes.get(i), new HashMap<String, Integer>());
                //  System.out.println("Memory Location: " + nodes.get(i).substring(5));
                //  System.out.println("Starting Points:");
                for(String startingPoint : graph.startingPoints) {
                    int j = nodes.indexOf(startingPoint);
                    if(j<0) continue;
                    if(reachableLocations.get(j).get(i)>0) {
                        // if(reachableLocations.get(j).get(i)==1)
                            // System.out.println("\t" + nodes.get(j) + " - Read");
                        // else 
                            // System.out.println("\t" + nodes.get(j) + " - Write");
                        possibleAccesses.get(nodes.get(i)).put(startingPoint, reachableLocations.get(j).get(i));
                    }
                }
            }
            
        }
        return possibleAccesses;
    }
}
