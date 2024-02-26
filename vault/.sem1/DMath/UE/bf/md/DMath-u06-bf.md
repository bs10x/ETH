
[[V10_posets]]
## 6.5
#### a)
**Prove:**
Let A, B be sets. If A is uncountable and A $\preceq$ B then B is uncountable.

**Proof:**
(using Lemma 3.15.(ii): The relation $\preceq$ is transitive: $A \preceq B \land B \preceq C \implies A \preceq C$)
(using Definition 3.42.(iii): A set $A$ is called countable if $A\preceq N$, and *uncountable* otherwise)

$\mathbb{N} \preceq A \land A \preceq B \implies \mathbb{N} \preceq B$
$\blacksquare$

#### b)
**Prove:**
The set $S = \{\text{functions }\{0,\,1\} \rightarrow \{0,\,1\}^\infty\}$ is uncountable.

**Proof:**
We will prove this using contradiction. Let's assume the set $S$ is countable, so $S \sim\mathbb{N}$. This means, that there is a one to one mapping onto each unique value (bijection) between functions $f_n$ to $\mathbb{N}$. Let us define $f_n$ as follows:

$f_n \overset{def}{=} \beta_{n,\,0}, \,\beta_{n,\,1}, \,\beta_{n,\,2}, \,\beta_{n,\,3}, \, ...$
For some $n \in \mathbb{N}$

Let $\beta_{n,\,i}$ be the i-th bit in the n-th sequence $f_n$ where for convenience we begin numbering the bits with $i = 0$.

Let $\overline{b}$ be the complement of a bit $b \in \{0,\,1\}$.

We define a new semi-infinite binary sequence $\alpha$ as follows:
$\alpha \overset{def}{=} \overline{\beta_{n,\,0}}, \,\overline{\beta_{n,\,1}}, \,\overline{\beta_{n,\,2}}, \,\overline{\beta_{n,\,3}}, \, ...$

Obviously, $\alpha \in \{0,\,1\}^\infty$ but there is no $n \in\mathbb{N}$ such that $\alpha = f_n$ since $\alpha$ is constructed so as to disagree in at least one bit (actually the i-th bit) with every sequence $f_n$ for $n \in\mathbb{N}$. This shows that there cannot be an bijection from $f_n$ to $\mathbb{N}$, which concludes the proof. We have shown that $\mathbb{N} \succeq S$ and $S$ is thus uncountable using Cantor's diagonalization argument.
$\blacksquare$
