package src;

import java.util.List;
import java.util.Set;

public class CallGraph {
    Set<String> startingPoints;
    List<Edge> references;
    public CallGraph(Set<String> startingPoints, List<Edge> edges) {
        this.startingPoints = startingPoints;
        this.references = edges;
    }
}
