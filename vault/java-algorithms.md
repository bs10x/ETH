
```java
public void BFS(int s) { // only runs on G with weights of 1
  int[] distance = new int[n]; // distances from s
  for (int i = 0; i < n; i++) distance[i] = -1; // populate distances
  Queue<Integer> Q = new LinkedList<Integer>(); 
  Q.add(s); // add source to queue
  distance[s] = 0; // distance from s -> s = 0
  visited[s] = true;
  while (!Q.isEmpty()) { // iterate until queue empty
    int u = Q.poll(); // next vertex is polled
    for (int i = 0; i < degree[u]; i++) { // for all neighbors to u
      if (distance[edges[u][i]] == -1) { // if not visited
        distance[edges[u][i]] = distance[] + 1; // update distances
        Q.add(edges[u][i); // add i-th neighbor to queue
      }
    }
  }
}

public void DFS(int s) {
  visited[s] = true; // visited array
  for (int i = 0; i < degree[s]; i++) { // for each neighbor
    if (!visited[edges[s][i]]) { // if not visited
    //set[edges[s][i]] = set[s]; // for computing sets in graph
    DFS(edges[s][i]); // recursive call to i-th child
    }
  }
}

public void dijkstra(int s) {
  int[] distance = new int[n]; // distance to all other v in G
  Arrays.fill(distance, Integer.MAX_VALUE); // fill with "infinity"
  Queue<Integer> Q = new LinkedList<>(); // queue for BFS
  Q.add(s); // initialize queue with the source
  distance[s] = 0; // distance from s -> s = 0
  while (!Q.isEmpty()) { // iterate until queue empty
    int u = Q.poll(); // u is top node in Q
    for (int i = 0; i < Av.get(u).size(); i++) { // check each child of u
      int v = Av.get(u).get(i); // child v
      int c = Aw.get(u).get(i); // weight of (u, v)
      // update distance if shorter path found
      if (distance[u] + w < distance[v]) {
        distance[v] = distance[u] + c;
        Q.add(v);
      }
    }
  }
}

public int prim(int s) {
  int[] distance = new int[n]; // distance to all other v in MST
  Arrays.fill(distance, Integer.MAX_VALUE); // fill with "infinity"
  PriorityQueue<Integer> PQ = new PriorityQueue<>(); // for selecting minimum edge
  PQ.add(s);
  distance[s] = 0;
  while (!PQ.isEmpty()) {
    int u = PQ.poll();
    for (int i = 0; i < Av.get(u).size(); i++) {
      int v = Av.get(u).get(i);
      int c = Aw.get(u).get(i);
      if (w < distance[v]) {
        distance[v] = c;
        PQ.add(v);
      }
    }
  }
  int sum = 0;
  for (int dist : distance) sum += dist;
  return sum;
}

public static int getMaximumScore(int n, int[] A) { // left-right game
  int[][] DP = new int[n][n];
  for (int s = 2; s <= n; s++) {
    for (int i = 0; i < n - s + 1; i++) {
      int j = i + s - 1;
      if (s == 2) DP[i][j] = Math.abs(A[i] - A[j]);
      else DP[i][j] = Math.max(Math.max(DP[i+1][j], DP[i][j-1]),
						       Math.abs(A[i] - A[j]) + DP[i+1][j-1]);
	}
  }
  return DP[0][n-1];
}

public static int ShortestUncommonSubsequence(int n, int m, char[] A, char B[]) {
  int[][] DP = new int[n + 1][m + 1];
  for (int i = 0; i <= n; i++) DP[i][0] = 1;
  for (int j = 0; j <= m; j++) DP[0][j] = Integer.MAX_VALUE - 1;
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= m; j++) {
      char common = A[i - 1];
      int search;
      for (search = j - 1; search >= 0; search--) if (B[search] == common) break;
      if (search == -1) DP[i][j] = 1; 
      else {
        if (DP[i - 1][j] <= DP[i - 1][search] + 1) DP[i][j] = DP[i - 1][j];
          else DP[i][j] = DP[i - 1][search] + 1;
        }
      }
    }
    if (DP[n][m] < Integer.MAX_VALUE) return DP[n][m];
    else return -1;
  }
					   
```