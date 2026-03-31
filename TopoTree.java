import java.io.FileNotFoundException;
import java.util.*;



class TreeNode {
    String value;
    List<TreeNode> children = new ArrayList<>();

    public TreeNode(String value) {
        this.value = value;
    }
}

public class TopoTree {

    // Build adjacency list and indegree map
    static void buildGraph(List<Edge> edges,
                           Map<String, List<String>> graph,
                           Map<String, Integer> indegree) {

        for (Edge e : edges) {
            graph.putIfAbsent(e.from, new ArrayList<>());
            graph.putIfAbsent(e.to, new ArrayList<>());

            graph.get(e.from).add(e.to);

            indegree.putIfAbsent(e.from, 0);
            indegree.put(e.to, indegree.getOrDefault(e.to, 0) + 1);
        }
    }

    // Kahn's algorithm for topological sort
    static List<String> topoSort(Map<String, List<String>> graph,
                                Map<String, Integer> indegree) {

        Queue<String> queue = new LinkedList<>();
        List<String> result = new ArrayList<>();

        for (String node : indegree.keySet()) {
            if (indegree.get(node) == 0) {
                queue.add(node);
            }
        }

        while (!queue.isEmpty()) {
            String curr = queue.poll();
            result.add(curr);

            for (String neighbor : graph.getOrDefault(curr, Collections.emptyList())) {
                indegree.put(neighbor, indegree.get(neighbor) - 1);
                if (indegree.get(neighbor) == 0) {
                    queue.add(neighbor);
                }
            }
        }

        // Detect cycle
        if (result.size() != graph.size()) {
            throw new RuntimeException("Graph has a cycle!");
        }

        return result;
    }

    // Build tree/forest from graph (not from topo order directly)
    static Map<String, TreeNode> buildTree(Map<String, List<String>> graph) {
        Map<String, TreeNode> nodes = new HashMap<>();

        // Create all nodes
        for (String key : graph.keySet()) {
            nodes.putIfAbsent(key, new TreeNode(key));
            for (String child : graph.get(key)) {
                nodes.putIfAbsent(child, new TreeNode(child));
            }
        }

        // Link children
        for (String parent : graph.keySet()) {
            TreeNode parentNode = nodes.get(parent);
            for (String child : graph.get(parent)) {
                parentNode.children.add(nodes.get(child));
            }
        }

        return nodes;
    }

    // Find roots (indegree == 0)
    static List<TreeNode> findRoots(Map<String, TreeNode> nodes,
                                   Map<String, Integer> indegree) {
        List<TreeNode> roots = new ArrayList<>();

        for (String node : nodes.keySet()) {
            if (indegree.getOrDefault(node, 0) == 0) {
                roots.add(nodes.get(node));
            }
        }

        return roots;
    }

    // Pretty print tree
    static void printTree(TreeNode node, String indent, Set<String> visited) {
        if (visited.contains(node.value)) return; // prevent duplicates in DAG

        visited.add(node.value);
        System.out.println(indent + node.value);

        for (TreeNode child : node.children) {
            printTree(child, indent + "  ", visited);
        }
    }

    public static void main(String[] args) throws FileNotFoundException {

        List<Edge> edges = Parser.parseLLVM("OS.ll");

        Map<String, List<String>> graph = new HashMap<>();
        Map<String, Integer> indegree = new HashMap<>();

        buildGraph(edges, graph, indegree);

        // Topological order
        List<String> topo = topoSort(graph, new HashMap<>(indegree));
        System.out.println("Topological Order: " + topo);

        // Build forest
        Map<String, TreeNode> nodes = buildTree(graph);
        List<TreeNode> roots = findRoots(nodes, indegree);

        System.out.println("\nTree(s):");
        Set<String> visited = new HashSet<>();
        for (TreeNode root : roots) {
            printTree(root, "", visited);
            System.out.println();
        }
    }
}