

7.1

```java
int[] A;
int n = A.length;
int b;
boolean DP[n][b] = false;

for(int i = 0; i < n; i++) { //loop through rows (1-n)
	for(int j = 0; j < b; j++) { //loop through columns (1-b)
		// guard arm for base cases
		if(j % A[i]) {dp[i][j] = true;}
		
		// guard arm for cases where A[i] can be reached already
		if(dp[i-1][j]) {dp[i][j] = true;} 
		
		// recursive steps		
		if(dp[i-1][j-A[i]] | dp[i-1][j-3*A[i]]) {dp[i][j] = true;}
	}
}


```
