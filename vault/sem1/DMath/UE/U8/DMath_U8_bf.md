







8.3
Let $\langle G,*,\hat\, , e\rangle$ be a group, and let $S$ be a set. Assume that $f : G \rightarrow S$ is a bijection, and consider
- the binary operation $\star$ on $S$ given by $s \star s′ \overset{def}{=} f (f^{−1}(s) ∗ f^{−1}(s′))$ 
- the unary operation $\tilde{}$  on $S$ given by $\tilde{s} \overset{def}{=} f(\widehat{f^{-1}(s)})$.
 
  Prove the following statement. 
  a) Axiom G1 ($\star$ and $\tilde{}$ is associative) holds for $\langle S, \star, \tilde{\,}, f(e)\rangle$

  ((a, b)\*(c,d))\*(e, f) // def *
  = (ac, ad+b)\*(e, f) // def *
  
  = (ace, acf +ad +b)
  = (ace, a(cf +d) +b)
  = (a, b)\*(ce, cf +d)

 = (a, b)\*((c, d)\*(e, f))



(a, b)\*(e_1, e_2) =(ae_1, ae_2 +b) = (a, b)
e_1=1, e_2=0













8.4
c)
Prove that $$\langle\mathbb{Z}^*_{15}, \odot_{15}\rangle \simeq \langle\mathbb{Z}^∗_{16}, \odot_{16}〉$$



 For two groups $\langle G; *, \hat{\,}, e\rangle$ and $\langle H; \star , \tilde{\,}, e'\rangle$, a function $\psi : G \rightarrow H$ is called a group homomorphism if, for all $a$ and $b$, $\psi (a*b) = \psi (a) \star \psi (b)$
 If $\psi$ is a bijection from $G$ to $H$, then it is called an isomorphism, and we say that $G$ and $H$ are isomorphic and write $G \simeq H$.


$\langle\mathbb{Z}^*_{15}, \odot_{15}\rangle$

| $\odot_{15}$ | 1  | 2  | 4  | 7  | 8  | 11 | 13 | 14 |
|--------------|----|----|----|----|----|----|----|----|
| **1**            | 1  | 2  | 4  | 7  | 8  | 11 | 13 | 14 |
| **2**            | 2  | 4  | 8  | 14 | 1  | 7  | 11 | 13 |
| **4**            | 4  | 8  | 1  | 13 | 2  | 14 | 7  | 11 |
| **7**            | 7  | 14 | 13 | 4  | 11 | 2  | 1  | 8  |
| **8**            | 8  | 1  | 2  | 11 | 4  | 13 | 14 | 7  |
| **11**           | 11 | 7  | 14 | 2  | 13 | 1  | 8  | 4  |
| **13**           | 13 | 11 | 7  | 1  | 14 | 8  | 4  | 2  |
| **14**           | 14 | 13 | 11 | 8  | 7  | 4  | 2  | 1  |


$\langle1\rangle=\{1\} \text{ (order 1)}$
$\langle2\rangle=\{1,2,4,8\}\text{ (order 4)}$
$\langle4\rangle=\{1,4\} \text{ (order 2)}$
$\langle7\rangle=\{1,7,4,13\} \text{ (order 4)}$
$\langle8\rangle=\{1,8,4,2\} \text{ (order 4)}$
$\langle11\rangle=\{1,11,1,13\} \text{ (order 4)}$
$\langle13\rangle=\{1,13,4,7\} \text{ (order 4)}$
$\langle14\rangle=\{1,14\}\text{ (order 2)}$


2, 11, (7 or 13), 14

2, 8
1, 4, 7, 11, 13, 14
11, 13, 14
ord4, ord4, ord2

$\langle\mathbb{Z}^*_{16}, \odot_{16}\rangle$

| $\odot_{16}$ | 1  | 3  | 5  | 7  | 9  | 11 | 13 | 15 |
|--------------|----|----|----|----|----|----|----|----|
| **1**        | 1  | 3  | 5  | 7  | 9  | 11 | 13 | 15 |
| **3**        | 3  | 9  | 15 | 5  | 11 | 1  | 7  | 13 |
| **5**        | 5  | 15 | 9  | 3  | 13 | 7  | 1  | 11 |
| **7**        | 7  | 5  | 3  | 1  | 15 | 13 | 11 | 9  |
| **9**        | 9  | 11 | 13 | 15 | 1  | 3  | 5  | 7  |
| **11**       | 11 | 1  | 7  | 13 | 3  | 9  | 15 | 5  |
| **13**       | 13 | 7  | 1  | 11 | 5  | 15 | 9  | 3  |
| **15**       | 15 | 13 | 11 | 9  | 7  | 5  | 3  | 1  |


$\langle1\rangle=\{1\} \text{ (order 1)}$
$\langle3\rangle=\{1,3,9,11\}\text{ (order 4)}$
$\langle5\rangle=\{1,5,9,13\} \text{ (order 4)}$
$\langle7\rangle=\{1,7\} \text{ (order 2)}$
$\langle9\rangle=\{1,9\} \text{ (order 2)}$
$\langle11\rangle=\{1,11,9,3\} \text{ (order 4)}$
$\langle13\rangle=\{1,13,9,5\} \text{ (order 4)}$
$\langle15\rangle=\{1,15\}\text{ (order 2)}$


3, 7, (5 or 13), 15


7
1, 3, 5, 9, 11, 13 ,15
11, 13, 15
ord4, ord4, ord2






1 2 4 7 8 11 13 14
1 3 5 7 9 11 13 15


$\psi : \mathbb{Z}^*_{15} \rightarrow \mathbb{Z}^*_{16}$

$$
\psi (a) \overset{def}{=} \psi(2^k\equiv_{15}a) = 3^k \,\text{mod 16}
$$










$$\eth\overset{def}{=}\{\text{The set of all Students at ETH}\}$$
$$\smile\overset{def}{=}\text{B smiles, where }B\in\eth
$$
$$\langle\text{Set};\circledast ; \circledcirc; \text{neutral element} \rangle $$