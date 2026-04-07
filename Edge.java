public class Edge {
        public String from, to;
        public ReferenceType type;
        public Edge(String from, String to, ReferenceType type) {
            this.from = from;
            this.to = to;
            this.type = type;
        }
        public String toString() {
            return this.from + " -> " + this.to + ": " + this.type;
        }
    }
