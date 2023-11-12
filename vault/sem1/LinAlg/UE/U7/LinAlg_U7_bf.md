

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
			// using A[i] once
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
   If j can be reached with A\[]   
   
4. Calculation order: In which order can entries be computed so that values needed for each entry have been determined in previous steps?
   
   
5. Extracting the solution: How can the solution be extracted once the table has been filled?
   
   
6. Running time: What is the running time of your solution?