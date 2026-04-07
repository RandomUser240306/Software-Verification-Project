import java.io.FileNotFoundException;
import java.util.*;



class TreeNode {
    String value;

    static class ChildEdge {
        TreeNode node;
        ReferenceType type;

        ChildEdge(TreeNode node, ReferenceType type) {
            this.node = node;
            this.type = type;
        }
    }

    List<ChildEdge> children = new ArrayList<>();

    TreeNode(String value) {
        this.value = value;
    }
}
public class TopoTree {
// Build graph + indegree
    public static void buildGraph(List<Edge> edges,
                                 Map<String, List<Edge>> graph,
                                 Map<String, Integer> indegree) {

        for (Edge e : edges) {
            graph.putIfAbsent(e.from, new ArrayList<>());
            graph.putIfAbsent(e.to, new ArrayList<>());

            graph.get(e.from).add(e);

            indegree.putIfAbsent(e.from, 0);
            indegree.put(e.to, indegree.getOrDefault(e.to, 0) + 1);
        }
    }

    // Topological sort (Kahn)
    public static List<String> topoSort(Map<String, List<Edge>> graph,
                                        Map<String, Integer> indegree) {

        Queue<String> q = new LinkedList<>();
        List<String> order = new ArrayList<>();

        for (String node : indegree.keySet()) {
            if (indegree.get(node) == 0) {
                q.add(node);
            }
        }

        while (!q.isEmpty()) {
            String curr = q.poll();
            order.add(curr);

            for (Edge e : graph.getOrDefault(curr, Collections.emptyList())) {
                String next = e.to;
                indegree.put(next, indegree.get(next) - 1);

                if (indegree.get(next) == 0) {
                    q.add(next);
                }
            }
        }

        if (order.size() != graph.size()) {
            throw new RuntimeException("Graph has a cycle");
        }

        return order;
    }

    // Build tree/forest with edge types
    public static Map<String, TreeNode> buildTree(Map<String, List<Edge>> graph) {
        Map<String, TreeNode> nodes = new HashMap<>();

        // create nodes
        for (String key : graph.keySet()) {
            nodes.putIfAbsent(key, new TreeNode(key));
            for (Edge e : graph.get(key)) {
                nodes.putIfAbsent(e.to, new TreeNode(e.to));
            }
        }

        // connect edges
        for (String parent : graph.keySet()) {
            TreeNode p = nodes.get(parent);

            for (Edge e : graph.get(parent)) {
                TreeNode child = nodes.get(e.to);
                p.children.add(new TreeNode.ChildEdge(child, e.type));
            }
        }

        return nodes;
    }

    // find roots
    public static List<TreeNode> findRoots(Map<String, TreeNode> nodes,
                                           Map<String, Integer> indegree) {

        List<TreeNode> roots = new ArrayList<>();

        for (String node : nodes.keySet()) {
            if (indegree.getOrDefault(node, 0) == 0) {
                roots.add(nodes.get(node));
            }
        }

        return roots;
    }

    // print
    public static void printTree(TreeNode node, String indent, Set<String> visited) {
        if (visited.contains(node.value)) return;

        visited.add(node.value);
        System.out.println(indent + node.value);

        for (TreeNode.ChildEdge child : node.children) {
            System.out.println(indent + "  └─(" + child.type + ")→ " + child.node.value);
            printTree(child.node, indent + "    ", visited);
        }
    }

    public static void main(String[] args) throws FileNotFoundException {

        List<Edge> edges = Parser.parseLLVM("OS.ll");

        Map<String, List<Edge>> graph = new HashMap<>();
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