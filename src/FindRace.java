package src;

import java.io.FileNotFoundException;
import java.util.Map;

public class FindRace {
    public static void main(String[] args) throws FileNotFoundException {
        Map<String, Map<String, Integer>> possibleAccesses = Accesses.getAccesses();
        int numRaces = 0;
        for(String location : possibleAccesses.keySet()) {
            boolean hasRace = false;
            for(String accessPoint : possibleAccesses.get(location).keySet()) {
                if(possibleAccesses.get(location).get(accessPoint)==2 && possibleAccesses.get(location).size()>1) {
                    hasRace = true;
                    numRaces++;
                }
            }
            if(hasRace) {
                System.out.printf("Race condition detected for memory resource %s\n", location.substring(5));
                System.out.println("Accessed by starting points (1 is read, 2 is write):");
                System.out.println("\t" + possibleAccesses.get(location).toString());
            }
        }
        if(numRaces==0) System.out.println("No race conditions found :)");
        else System.out.println("TOTAL: " + numRaces + " race conditions found");
    }
}
