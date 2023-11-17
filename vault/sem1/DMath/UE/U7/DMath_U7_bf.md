[[sem1/DMath/VRL/V12_|V12_]]
## 7.3
Prove that for all positive integers a, b, c:
$$gcd(a,\,lcm(b,\,c)) = lcm(gcd(a,\,b),\,gcd(a,\,c))$$


we define the variables $a,\,b,\,c$ as products of primes to the powers $e_i$, $f_i$ and $g_i$ respectively:
$$a=\prod_{i} p_i^{e_i}$$
$$b=\prod_{i} p_i^{f_i}$$
$$c=\prod_{i} p_i^{g_i}$$

this gives us the definitions for gcd(a, b, c) and lcm(a, b, c):
$$gcd(a,\,b)=\prod_i p_i^{min(e_i,\,f_i)}$$
$$lcm(a,\,b)=\prod_i p_i^{max(e_i,\,f_i)}$$

since $e_i$, $f_i$, $g_i$ are the powers of the prime number $p_i$ at index $i$ the equation to prove resolves to:
$$\prod_i p_i^{min(e_i,\,max(f_i,\,g_i))}=\prod_i p_i ^{max(min(e_i,\,f_i),\, min(e_i,\, g_i))}$$

we will prove the equation using case distinction. we only need to concern ourselves with these cases:

#### case 1:
$e_i\leq f_i,\,g_i$

If $e_i$ is less than or equal to both $f_i$ and $g_i$, then the minimum of $e_i$ with anything will be $e_i$.

$min(e_i, max(f_i, g_i)) = min(e_i, g_i) = e_i$
$max(min(e_i, f_i), min(e_i, g_i)) = max(e_i, e_i) = e_i$

So, both sides of the equation will be equal.


#### case 2:
$e_i \geq f_i,\,g_i$
If $e_i$ is greater than or equal to both $f_i$ and w, then the maximum of $f_i$  and $g_i$ will be either $f_i$ or $g_i$ (whichever is greater).

$min(e_i, max(f_i, g_i)) = max(f_i, g_i)$
$max(min(e_i, f_i), min(e_i, g_i)) = max(f_i, g_i)$

In both cases, both sides of the equation will be equal.


#### case 3:
$f_i \leq e_i \leq g_i$

If $e_i$ is between $f_i$ and w, then the maximum of $f_i$ and w will be $g_i$, and the minimum of $e_i$ with $g_i$ will be $e_i$.

$min(e_i, max(f_i, g_i)) = min(e_i, g_i) = e_i$
$max(min(e_i, f_i), min(e_i, g_i)) = max(e_i, e_i) = e_i$

So, both sides of the equation will be equal.


Thus, the statement is proven for all $e_i,\,f_i,\,g_i$ which corresponds to
$gcd(a,\,lcm(b,\,c)) = lcm(gcd(a,\,b),\,gcd(a,\,c))$

for all positive integers $a,\,b,\,c$
$\square$

___













$d=gcd(a,\,b) \overset{\cdot}{\implies} \exists u,\,v \in \mathbb{Z}\,|\,d=u\cdot a + v\cdot b$


$\forall \,a,\,b,\,u,\,v\,\in\mathbb{Z}/\{0\}\,|\, u\cdot a + v\cdot b = 1\overset{\cdot}{\implies} gcd(a,\,b)=1$















