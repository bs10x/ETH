


## 6.5
#### a)
**Prove:**
Let A, B be sets. If A is uncountable and A $\succeq$ B then B is uncountable.

**Proof:**
(using Lemma 3.15.(ii): The relation $\succeq$ is transitive: $A \succeq B \land B \succeq C \implies A \succeq C$)
(using Definition 3.42.(iii): A set $A$ is called countable if $A\succeq N$, and *uncountable* otherwise)



#### b)


**Proof:**
(using: Theorem 3.23. The set $\{0,\,1\}^\infty$  is uncountable.

Proof. This is a proof by contradiction. To arrive at a contradiction, assume that a bijection f : N → {0, 1}^∞ exists.57 Let βi,j be the jth bit in the i-th sequence f (i), where for convenience we begin numbering the bits with j = 0: f (i) def = βi,0, βi,1, βi,2, βi,3, . . . . Let b be the complement of a bit b ∈ {0, 1}. We define a new semi-infinite binary sequence α as follows: α def = β0,0, β1,1, β2,2, β3,3, . . . . Obviously, α ∈ {0, 1}∞, but there is no n ∈ N such that α = f (n) since α is constructed so as to disagree in at least one bit (actually the nth bit) with every sequence f (n) for n ∈ N. This shows that f cannot be a bijection, which concludes the proof.


we have to prove, that $S \sim \{0, 1\}^\infty$
for that, we have to show that there is an uncountable set of functions, that map {0, 1} to  $\{0, 1\}^\infty$.

we can construct f_n, such that

f_0(0) = 0
f_0(1) = 0

f_1(0) = 0
f_1(1) = 1

f_2(0) = 0
f_2(1) = 11

f_3(0) = 0
f_3(1) = 111


$f\{0,\,1\} \rightarrow \{0, 1\}^\infty$



we observe, that the function f_n, where n \in\mathbb{N} has n numbers of 1's, followed by an infinite number of zeros. we ignore these and note that each number n \in\mathbb{N} can thus be mapped to an element in $\{0, 1\}^\infty$, namely, {1}^n. 

we define \hat{b}, such that 
we can define an f_\hat{n}, such that


since $\{0, 1\}^\infty$





for all n \in \mathbb{N}, we can thus have a function that returns an element of  $\{0, 1\}^\infty$

however, there is always some element e 




