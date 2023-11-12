

7.1

```java
int[] A;
int n = A.length;
int b;
boolean[][] DP = new boolean [n+1][b+1];

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


```
