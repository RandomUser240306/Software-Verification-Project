import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Accesses {
    public static void main(String[] args) throws FileNotFoundException {
        List<Edge> graph = Parser.parseLLVM("OS.ll");
        //Get ordered list of nodes
        Set<String> n = new HashSet<>();
        for(Edge e : graph) {
            n.add(e.from);
            n.add(e.to);
        }
        List<String> nodes = new ArrayList<>(n);
        //construct adjacency matrix from graph
        int[][] mat = new int[nodes.size()][nodes.size()];
        for(Edge e : graph) {
            mat[nodes.indexOf(e.from)][nodes.indexOf(e.to)] = 1;
        }
        ArrayList<ArrayList<Integer>> reachableLocations = Reachable.transitiveClosure(mat);

        for(int i=0; i<reachableLocations.size(); i++) {
            System.out.println("Starting Point: " + nodes.get(i));
            System.out.println("Accessed Locations:");
            for(int j=0; j<reachableLocations.get(i).size(); j++) {
                if(reachableLocations.get(i).get(j)==1) {
                    System.out.println("\t" + nodes.get(j));
                }
                
            }
        }
    }
}
