


## 6.5
#### a)
**Prove:**
Let A, B be sets. If A is uncountable and A $\succeq$ B then B is uncountable.

**Proof:**
(using Lemma 3.15.(ii): The relation $\succeq$ is transitive: $A \succeq B \land B \succeq C \implies A \succeq C$)
(using Definition 3.42.(iii): A set $A$ is called countable if $A\succeq N$, and *uncountable* otherwise)

$\mathbb{N} \succeq A \land A \succeq B \implies \mathbb{N} \succeq B$
$\blacksquare$


#### b)
**Prove:**
The set $S = \{\text{functions }\{0,\,1\} \rightarrow \{0,\,1\}^\infty\}$ is uncountable.

**Proof:**
(using: Theorem 3.23. The set $\{0,\,1\}^\infty$  is uncountable)

This is a proof by contradiction. To arrive at a contradiction, we assume that a bijection
$f : \mathbb{N} \rightarrow \{0, \,1\}^\infty$ 
exists. Let $\beta_{i,\,j}$ be the j-th bit in the i-th sequence $f(i)$, where for convenience we begin numbering the bits with $j = 0$ :

$f(i) \overset{def}{=} \beta_{i,\,0}, \,\beta_{i,\,1}, \,\beta_{i,\,2}, \,\beta_{i,\,3}, \, ...$

Let $\overline{b}$ be the complement of a bit $b \in \{0,\,1\}$.

We define a new semi-infinite binary sequence $\alpha$ as follows:

$\alpha \overset{def}{=} \overline{\beta_{i,\,0}}, \,\overline{\beta_{i,\,1}}, \,\overline{\beta_{i,\,2}}, \,\overline{\beta_{i,\,3}}, \, ...$

Obviously, $\alpha \in \{0,\,1\}^\infty$ but there is no $n \in\mathbb{N}$ such that $\alpha = f(n)$ since $\alpha$ is constructed so as to disagree in at least one bit (actually the n-th bit) with every sequence $f(n)$ for $n \in\mathbb{N}$.
This shows that $f$ cannot be a bijection, which concludes the proof.


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

$$f_n\{0,\,1\} \overset{def}{=} \begin{cases} 0, &\text{for $f_n(0)$}\\\{1\}^n \{0\}^\infty, &\text{for $f_n(1)$} \end{cases}$$



we observe, that the function has n numbers of 1's, followed by an infinite number of zeros. we note that each number $n \in\mathbb{N}$ can thus be mapped to an element in $\{0, 1\}^\infty$, namely, $\{1\}^n \{0\}^\infty$. 


since $\{0, 1\}^\infty$





for all n \in \mathbb{N}, we can thus have a function that returns an element of  $\{0, 1\}^\infty$

however, there is always some element e 





zitat leon kolmanic:
was ist in es drin?
wir sollen zeigen das S, **richtig** viele sachen drin hat!
nicht abzählbar heist richtig unendlich, so richtig viel