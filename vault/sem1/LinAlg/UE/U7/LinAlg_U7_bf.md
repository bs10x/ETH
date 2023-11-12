

7.1

```java
int[] A;
int n = A.length;
int b;
boolean[][] dp = new boolean [n+1][b+1];

// base cases; 0 can always sum up to zero
for (int i = 0; i <= n; i++) {dp[i][0] = true;}

for(int i = 1; i <= n; i++) { //loop through rows (1-n)
	for(int j = 1; j <= b; j++) { //loop through columns (1-b)
		// guard arm for cases where A[i] can be reached already
		dp[i][j] = dp[i-1][j];
		
		if (j >= A[i-1]) {
			// using A[i] once, i.e. base cases
			dp[i][j] |= dp[i-1][j - A[i-1]];
			
			// using A[i] three times
			dp[i][j] |= dp[i-1][j - 3 * A[i-1]];
		}
	}
}
return dp[n][b]

```




1. Dimensions of the DP table: What are the dimensions of the DP table?
   The dimensions are n+1 by b+1, that is one row for every element in A and one row for all numbers to b, plus one row and column for zero. 
   
2. Subproblems: What is the meaning of each entry?
   Each entry represents the possibility of achieving the j with the subset A\[1, i] or the addition of j or 3\*j.
   
3. Recursion: How can an entry of the table be computed from previous entries? Justify why your recurrence relation is correct. Specify the base cases of the recursion, i.e., the cases that do not depend on others.
   If j can be reached with A\[i] or 3\*A\[i], the cell is set to true. These are the base cases.   
   
4. Calculation order: In which order can entries be computed so that values needed for each entry have been determined in previous steps?
   Each entry is calculated, row after row. All entries are either trivial (A\[i] or 3\*A\[i]) or a combination of previous entries.
   
5. Extracting the solution: How can the solution be extracted once the table has been filled?
   The value of dp\[n]\[b] will tell if there exists a subset $\mathbb{I}$, such that $\sum_{i\in \mathbb{I}}c_i*A[i]$, where $c_i= \{1,\,3\}$.
   
6. Running time: What is the running time of your solution?
   The running time is O(n\*b) since
   a. The outer loop runs from 1 to n, and the inner loop runs from 1 to b. Each iteration of the inner loop involves constant time operations.
   
   b. Inside the inner loop, there are constant-time operations for checking conditions and updating the DP table.




7.4

```java
int[][][] DP = new int[n + 1][k + 1][2];
// Base cases

for (int l = 0; l <= 1; l++) { DP[1][0][l] = 1; } // Filling the DP tablefor (int i = 2; i <= n; i++) { for (int j = 0; j <= k; j++) { for (int l = 0; l <= 1; l++) { DP[i][j][l] = DP[i - 1][j][0] + DP[i - 1][j][1]; if (j > 0) { DP[i][j][l] += DP[i - 1][j - 1][l]; } } } } // Summing up the possibilities for the last character int result = DP[n][k][0] + DP[n][k][1]; return result; }




```