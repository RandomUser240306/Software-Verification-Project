package src;

import java.awt.*;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.swing.*;

// Main panel for drawing the graph
class GraphPanel extends JPanel {
    private final List<Point> nodes;
    private final List<String> locations;
    private final List<Edge> edges;

    public GraphPanel(List<Point> nodes, List<Edge> edges, List<String> locations) {
        this.nodes = nodes;
        this.edges = edges;
        this.locations = locations;
        setPreferredSize(new Dimension(1000, 1000));
        setBackground(Color.WHITE);
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        g.setColor(Color.BLACK);

        // Draw edges
        for (Edge e : edges) {
            Point p1 = nodes.get(locations.indexOf(e.from));
            Point p2 = nodes.get(locations.indexOf(e.to));
            
            g.drawLine(p1.x, p1.y, p2.x, p2.y);
        }

        // Draw nodes
        for (int i = 0; i < nodes.size(); i++) {
            Point p = nodes.get(i);
            g.setColor(Color.BLUE);
            g.fillOval(p.x - 10, p.y - 10, 50, 50);
            g.setColor(Color.WHITE);
            g.drawString(locations.get(i), p.x - 4, p.y + 25);
        }
    }
}

public class DisplayGraph {
    public static void main(String[] args) throws IOException {
        SwingUtilities.invokeLater(() -> {
            List<Edge> graph = new ArrayList<>();
            try {
                graph = Parser.parseLLVM().references;
            } catch (FileNotFoundException ex) {
                System.getLogger(DisplayGraph.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            }
            // Define node positions
            Set<String> locations = new HashSet<>();
            for(Edge edge : graph) {
                locations.add(edge.from);
                locations.add(edge.to);
            }
            List<Point> nodes = new ArrayList<>();

            
            for(int i=0; i<locations.size(); i++) {
                double angle = 6.28/locations.size()*i;
                nodes.add(new Point((int)(375 + 375*Math.cos(angle)), (int)(375 + 375*Math.sin(angle))));
            }

            // Create and show frame
            JFrame frame = new JFrame("Graph Display");
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame.add(new GraphPanel(nodes, graph, new ArrayList<String>(locations)));
            frame.pack();
            frame.setLocationRelativeTo(null);
            frame.setVisible(true);
        });
    }
}
