







8.3
Let $\langle G,*,\hat\, , e\rangle$ be a group, and let $S$ be a set. Assume that $f : G \rightarrow S$ is a bijection, and consider
- the binary operation $\star$ on $S$ given by $s \star s′ \overset{def}{=} f (f^{−1}(s) ∗ f^{−1}(s′))$ 
- the unary operation $\tilde{}$  on $S$ given by $\tilde{s} \overset{def}{=} f(\widehat{f^{-1}(s)})$.
  Prove the following statements. 
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




$\langle\mathbb{Z}^*_{15}, \odot_{15}\rangle$
1 2 4 8
11 7 14 13


$\langle\mathbb{Z}^*_{16}, \odot_{16}\rangle$
1 3 5 7
9 11 13 15


1 2 4 7 8 11 13 14
1 3 5 7 9 11 13 15



tables with mult mod15 and mod16



  1 2 4 7 8 11 13 14
1
3
5
7
9
11
13
15







| $\odot_{15}$ |  |  |  |  |
| - | - | - | - | - |
|  | 0 | 1 | 0 | 1 |
|  | 0 | 0 | 0 | 1 |
|  | 1 | 1 | 0 | 1 |
|  | 1 | 1 | 1 | 1 |




















$$\eth\overset{def}{=}\{\text{The set of all Students at ETH}\}$$
$$\smile\overset{def}{=}\text{B smiles, where }B\in\eth
$$
$$\langle\text{Set};\circledast ; \circledcirc; \text{neutral element} \rangle $$