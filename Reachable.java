import java.util.ArrayList;

public class Reachable {
    public static ArrayList<ArrayList<Integer>> transitiveClosure(int[][] mat) {
        ArrayList<ArrayList<Integer>> ans = new ArrayList<>();
        int n = mat.length;
        // Copy the graph into resultant matrix
        for (int i = 0; i < n; i++) {
            ArrayList<Integer> row = new ArrayList<>();
            for (int j = 0; j < n; j++) {
                row.add(mat[i][j]);
            }
            ans.add(row);
        }

        // Transtive closure of (i, i) will always be 1 
        for (int i = 0; i < n; i++) ans.get(i).set(i, 1);

        // Apply floyd Warshall Algorithm
        // For each intermediate node k
        for (int k = 0; k < n; k++) {
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < n; j++) {

                    // Check if a path exists between i to k and 
                    // between k to j.
                    if (ans.get(i).get(k) == 1 && ans.get(k).get(j) == 1) {
                        ans.get(i).set(j, 1);
                    }
                }
            }
        }
        return ans;
    }
}
