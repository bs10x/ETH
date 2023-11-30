

## 10.5

Let $F = \mathbb{Z}_5[x]_{x^2+4x+1}$

(a) Prove that $F$ is a field.

**Proof:**
$\mathbb{Z}_5$ is a field, since $5$ is prime. (Theorem 5.23.)   
Now, since we have shown $\mathbb{Z}_5$ to be a field, it remains to show that the polynomial $x^2 +4x +1$ on $\mathbb{Z}_5$ is irreducible (Theorem 5.37.). To do this, we must prove that $x^2 +4x +1$ has no roots in $\mathbb{Z}_5$. 
Since
$$\mathbb{Z}_5 =\{0, 1, 2, 3, 4\}$$
we do this:
$$
\begin{align}
&x= 0 \implies 0^2 + 4(0) + 1 \not\equiv_5 0 \\
&x = 1 \implies 1^2 + 4(1) + 1 \not\equiv_5 0 \\
&x= 2 \implies 2^2 + 4(2) + 1 \not\equiv_5 0 \\
&x= 3 \implies 3^2 + 4(3) + 1 \not\equiv_5 0 \\
&x= 4 \implies 4^2 + 4(4) + 1 \not\equiv_5 0 \\
\end{align}
$$
which concludes the proof, as the polynomial $x^2 + 4x + 1$ is congruent to zero over no element in the field $\mathbb{Z}$.
$\square$
___


(b) Prove that $F^* = \langle x + 3 \rangle$

**Proof:**
To prove that $F^∗=\langle x+3\rangle$, we need to show two things:

1. Every nonzero element in $F$ can be expressed as a power of $x+3$.
2. Every element in $\langle x+3\rangle$ is a unit in $F$.


1:
Every nonzero element in $F$ can be expressed as a power of $x+3$.

Let $a(x)$ be a nonzero element in $F$, meaning $a(x)$ is a nonzero polynomial in $\mathbb{Z}_5​[x]_{x^2+4x+1}$. We want to show that $a(x)$ can be expressed as $(x+3)^n$ for some $n$.

Since $F$ is a field, $a(x)$ has an inverse, and therefore, $a(x)$ cannot be the zero polynomial. Also, $x^2+4x+1$ is irreducible over $\mathbb{Z}_5$​.

By the division algorithm for polynomials, any polynomial $a(x)$ can be written as $a(x)=q(x)(x^2+4x+1)+r(x)$, where $q(x)$ is the quotient and $r(x)$ is the remainder. The degree of $r(x)$ must be less than the degree of $x^2+4x+1$.

Now $r(x)$ can be expressed as $r(x)=(x+3)^n$ for some $n$ because $x+3$ is a linear factor of $x^2+4x+1$. Therefore, every nonzero element in $F$ can be expressed as a power of $x+3$.

### Step 2: Every element in ⟨�+3⟩⟨x+3⟩ is a unit in �F.

The ideal ⟨�+3⟩⟨x+3⟩ consists of all multiples of �+3x+3 in �F. To show that every element in this ideal is a unit in �F, you need to show that each nonzero element has a multiplicative inverse.

Take an arbitrary nonzero element �(�)b(x) in ⟨�+3⟩⟨x+3⟩. Then, �(�)=�(�)(�+3)b(x)=c(x)(x+3) for some �(�)c(x) in �F.

Since �+3x+3 is a linear factor of �2+4�+1x2+4x+1, �+3x+3 is not the zero polynomial in �F. Therefore, �(�)≠0c(x)=0 (otherwise �(�)=0b(x)=0, which is not possible).

Now, find the inverse of �+3x+3 in �F. You've shown in Step 1 that every nonzero element in �F can be expressed as a power of �+3x+3. Therefore, you can express the inverse of �+3x+3 as (�+3)−1=�(�)(x+3)−1=d(x) for some �(�)d(x) in �F.

Now, the product �(�)�(�)b(x)d(x) is in ⟨�+3⟩⟨x+3⟩ and equals �(�)(�+3)�(�)=�(�)c(x)(x+3)d(x)=c(x) because (�+3)�(�)=1(x+3)d(x)=1 (the inverse property). Thus, �(�)�(�)=�(�)b(x)d(x)=c(x), which means �(�)b(x) has an inverse in �F.

This shows that every element in ⟨�+3⟩⟨x+3⟩ is a unit in �F.

Combining both steps, you have shown that �∗=⟨�+3⟩F∗=⟨x+3⟩.




$|F^*| = |F \backslash \{0\} | = 5^2 -1 =24$
...

___


(c) Write $a(y) = (2x+3)y^2 +(2x+1)y +1 \in F [y]$ as a  product of irreducible polynomials.
Hint: $2x + 1 \equiv_{x2+4x+1} 2(x + 3) \in \mathbb{Z}_5[x]$.



deg(polynom) = 1 => irreduzibel


