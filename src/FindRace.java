package src;

import java.io.FileNotFoundException;
import java.util.Map;

public class FindRace {
    public static void main(String[] args) throws FileNotFoundException {
        Map<String, Map<String, Integer>> possibleAccesses = Accesses.getAccesses();
        int numRaces = 0;
        // Map<String, Map<String, Integer>> startAccesses = new HashMap<>();
        // for(String location : possibleAccesses.keySet()) {
        //     startAccesses.put(location, new HashMap<>(possibleAccesses.get(location)));
        //     possibleAccesses.get(location).entrySet().removeIf(n -> n.getKey().contains("Start") || n.getKey().contains("Init") || n.getKey().equals("main"));
        //     startAccesses.get(location).entrySet().removeAll(possibleAccesses.get(location).entrySet());
        // }
        // System.out.println("Starting up: ");
        // for(String location : startAccesses.keySet()) {
        //     boolean hasRace = false;
            
        //     for(String accessPoint : startAccesses.get(location).keySet()) {
        //         if(startAccesses.get(location).get(accessPoint)==2 && startAccesses.get(location).size()>1) {
        //             hasRace = true;
        //         }
        //     }
        //     if(hasRace) {
        //         numRaces++;
        //         System.out.printf("Race condition detected for memory resource %s\n", location.substring(5));
        //         System.out.println("Accessed by starting points (1 is read, 2 is write):");
        //         System.out.println("\t" + startAccesses.toString());
        //     }
        // }
        // if(numRaces==0) System.out.println("No race conditions found :)");
        // System.out.println("Running: ");
        for(String location : possibleAccesses.keySet()) {   
            boolean hasRace = false;
            for(String accessPoint : possibleAccesses.get(location).keySet()) {
                if(possibleAccesses.get(location).get(accessPoint)==2 && possibleAccesses.get(location).size()>1) {
                    hasRace = true;
                }
            }
            if(hasRace) {
                numRaces++;
                System.out.printf("Race condition detected for memory resource %s\n", location.substring(5));
                System.out.println("Accessed by starting points (1 is read, 2 is write):");
                System.out.println("\t" + possibleAccesses.get(location).toString());
            }
        }
        if(numRaces==0) System.out.println("No race conditions found :)");
        else System.out.println("TOTAL: " + numRaces + " race conditions found");
    }
}
