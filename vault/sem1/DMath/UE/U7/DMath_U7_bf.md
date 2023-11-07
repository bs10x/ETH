Prove that for all positive integers a, b, c

gcd(a, lcm(b, c)) = lcm(gcd(a, b), gcd(a, c))

greatest common divisor ( a, least common multiple (b, c)) =



Definition 4.2.
For integers a and b (not both 0), an integer d is called a greatest common divisor of a and b if d divides both a and b and if every common divisor of a and b divides d, i.e., if
d | a ∧ d | b ∧ ∀c ((c | a ∧ c | b) → c | d)


Definition 4.5.
The least common multiple l of two positive integers a and b, denoted l = lcm(a, b), is the common multiple of a and b which divides every common multiple of a and b, i.e.,
$$(a\,|\,lcm(a,\,b))\land (b\,|\,lcm(a,\,b)) \land (\forall m((a\,|\,m \land b\,|\,m) \rightarrow lcm(a,\,b)\,|\,m))$$


Prove that for all positive integers a, b, c:
$$gcd(a, lcm(b, c)) = lcm(gcd(a, b), gcd(a, c))$$


we define the variables $a,\,b,\,c$as follows, as products of primes to the powers $e_i$, $f_i$ and $g_i$ respectively:
$$a=\prod_{i} p_i^{e_i}$$
$$b=\prod_{i} p_i^{f_i}$$
$$c=\prod_{i} p_i^{g_i}$$


$$gcd(a,\,b,\,c)=\prod_i p_i^{min(e_i,\,f_i,\,g_i)}$$
$$lcm(a,\,b,\,c)=\prod_i p_i^{max(e_i,\,f_i,\,g_i)}$$


