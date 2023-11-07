Prove that for all positive integers a, b, c

gcd(a, lcm(b, c)) = lcm(gcd(a, b), gcd(a, c))

greatest common divisor ( a, least common multiple (b, c)) =



Definition 4.2.
For integers a and b (not both 0), an integer d is called a greatest common divisor of a and b if d divides both a and b and if every common divisor of a and b divides d, i.e., if
d | a ∧ d | b ∧ ∀c ((c | a ∧ c | b) → c | d)


Definition 4.5.
The least common multiple l of two positive integers a and b, denoted l = lcm(a, b), is the common multiple of a and b which divides every common multiple of a and b, i.e.,
$$(a\,|\,lcm(a,\,b))\land (b\,|\,lcm(a,\,b)) \land (\forall m((a\,|\,m \land b\,|\,m) \rightarrow lcm(a,\,b)\,|\,m))$$







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

since $e_i$, $f_i$, $g_i$ are the powers of the prime number $p_i$ we can nest the definitions. this gives us:
$$\prod_i p_i^{min(e_i,\,max(f_i,\,g_i))}=\prod_i p_i ^{max(min(e_i,\,f_i),\, min(e_i,\, g_i))}$$ 
where $e_i \leq f_i \leq g_i$

for convenience and readability's sake, we will define the variables as follows:
$e_i=u$
$f_i=v$
$g_i=w$

we will prove the equivalence using case distinction. we only need to concern ourselves with:

min(u, max(v, w)) = max(min(u, v), min(u, w))

since there are three variables there are $3!=6$ cases we need to consider.

u = v = w
u < v = w
u = v < w
v = w < u

























