

## 12.5
We extend predicate logic with a new quantifier $\bigcirc$ (read: for many) as follows:

**Syntax:** If $F$ is a formula, then for any variable symbol $x_i$, $\bigcirc x_i F$ is a formula.
**Semantics:** $\mathcal A(\bigcirc x_i F) =1 \iff \{u \in U^{\mathcal A}\ | \ \mathcal A_{[x_i\rightarrow u]} (F)=1\}\sim U^{\mathcal A}$.

Using the semantics of predicate logic extended in this way, prove or disprove the following statements, where $F$ is an arbitrary formula.

**a)** The formula $(\bigcirc x F)\wedge (\bigcirc x \lnot F)$ is unsatisfiable.
**b)** $\bigcirc x F \models \exists x F$
**c)** $\forall x \hspace{-0.2em}\bigcirc \hspace{-0.2em} y F \models \bigcirc y \forall x F$

**Expectation:** If the statement is true, your proof should use the definitions of the semantics. In each step, at most one definition (e.g., the semantics of $\bigcirc$) should be applied. If the statement is not true, you should provide a counterexample: make sure to define everything needed for a suitable interpretation.

___

a) The formula $(\bigcirc x F)\wedge (\bigcirc x \lnot F)$ is unsatisfiable.

Disproven by counterexample. We want to show that there exists an interpretation $\mathcal A$ such that $(\bigcirc x F\land (\bigcirc x \lnot F) =1$, making the formula satisfiable.

Let $F$ be the formula $P(x)$

Let $\mathcal A=(U, \phi, \psi, \xi)$ be a suitable interpretation for the formula.
- Let $U^\mathcal A= \mathbb N^*$
- Let $\phi = \varnothing$ (there are no functions in our formula)
- Let $\psi = \{P^\mathcal A(x) = 1 \iff x\equiv_2 0, \ \text{i.e.} \ P^\mathcal A (x) = 1 \ \text{if and only if x is even}\}$
- Let $\xi = \varnothing$ (there are no free variables in our formula)
 
$$\begin{align}
& \mathcal{A}((\bigcirc x F\land (\bigcirc x \lnot F)\\

\overset\cdot\implies&\mathcal{A}((\bigcirc x P(x))\land (\bigcirc x \lnot P(x))) & (\text{Definition of $F$})\\

\overset\cdot\implies &\mathcal{A}((\bigcirc x P(x))) \enspace and\enspace \mathcal{A}((\bigcirc x \lnot P(x))) & (\text{Definition 6.24; Semantics of $\land$ })\\

\overset\cdot\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}_{[x\to u]}(P(x)) = 1\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \mathcal{A}_{[x\to u]}(\lnot P(x)) = 1\}\sim\mathbb{N} & (\text{Semantics of $\bigcirc x_i$})\\

\overset\cdot\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}(P(u) = 1)\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \mathcal{A}(\lnot P(u) = 1)\}\sim\mathbb{N} & ([x\to u])\\

\overset\cdot\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}(P(u) = 1)\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \mathcal{A}(P(u) = 0)\}\sim\mathbb{N} & (\text{Definition 6.24; Semantics of $\lnot$})\\

\overset\cdot\implies&\{u\in U^\mathcal{A} \mid \text{$u$ is even})\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \text{$u$ is not even}\}\sim\mathbb{N} & (\text{Interpretation of $P^\mathcal{A}(x)$})\\

\overset\cdot\implies&{\{u\in \mathbb{N} \mid \text{$u$ is even})\}\sim\mathbb{N}} \enspace and\enspace{\{u\in \mathbb{N} \mid \text{$u$ is not even}\}\sim\mathbb{N}} & (\text{Interpretation of $U^\mathcal{A}$})\\

\end{align}
$$

All that remains is to show is that ${\{u\in \mathbb{N} \mid \text{u is even})\}\sim\mathbb{N}}$ and ${\{u\in \mathbb{N} \mid \text{u is not even}\}\sim\mathbb{N}}$.

We define two sets $S =\{u\in\mathbb{N}\mid u \text{ is even}\}$ and $T=\{u\in\mathbb{N}\mid u \text{ is not even}\}$ and construct a bijection between them and $\mathbb N^*$ 
Let $f : \mathbb N \rightarrow S$ be defined as $f(x)= 2\cdot x$. It's easy to see that, for every $x \in \mathbb N, f(x) \in S$.
Let $g : \mathbb N \rightarrow T$ be defined as $g(x) = 2\cdot x + 1$. Since, for every $x\in\mathbb N, f(x)\in T$ as $f(x) \equiv_21$ for all $x\in\mathbb N$.

Thus both parts are satisfiable under some interpretation $\mathcal A$, disproving the statement.
$\square$

___

**b)** $\bigcirc x F \models \exists x F$

We proof this by showing that any interpretation that's suitable for both sides of the formula and is a model for $\bigcirc x F$ is also a model for $\exists x F$.

Since any $U^\mathcal A$ (where $\mathcal A$ is a model for the LHS) is equinumerous to the set $\{u \in U^{\mathcal A}\ | \ \mathcal A_{[x_i\rightarrow u]} (F)=1\}$ and no $U^\mathcal A$ can be empty (as per Definition 6.34.), that same $\mathcal A$ is also a model for $\exists x F$, by definition 6.36. $\mathcal A(\exists xF)$

$$
\begin{align}
&\mathcal A(\bigcirc x_i F)=1 \\
\overset\cdot\implies &\{u \in U^{\mathcal A}\ | \ \mathcal A_{[x_i\rightarrow u]} (F)=1\}\sim U^\mathcal A \ \text{and} \ U^\mathcal A \neq \varnothing &\text{(Semantics of $\bigcirc x_i$, Definition 6.34. $U\neq\varnothing$)}\\
\overset\cdot\implies & \mathcal A_{[x\rightarrow u]} (F) =1 \ \text{for some $u \in U$} &\text{Definition 6.36. $\mathcal A(\exists xF)$}\\
\overset\cdot\implies &\mathcal A(\exists x F)= 1
\end{align}
$$

As was to be shown.
$\square$

___

**c)** $\forall x \hspace{-0.2em}\bigcirc \hspace{-0.2em} y F \models \bigcirc y \forall x F$

We will disprove this statement with a counterexample.

Let $F$ be the formula $P(x,y)$

Let $\mathcal A=(U, \phi, \psi, \xi)$ be a suitable interpretation for the formula.
- Let $U^\mathcal A= \mathbb N^*$
- Let $\phi = \varnothing$ (there are no functions in our formula)
- Let $\psi = \{P^\mathcal A(x) = 1 \iff y>x, \ \text{i.e.} \ P^\mathcal A (x) = 1 \ \text{if and only if y is greater than x}\}$
- Let $\xi = \varnothing$ (there are no free variables in our formula)

$$
\begin{align}
&\mathcal{A}(\forall x\hspace{-0.2em}\bigcirc\hspace{-0.2em} y F)\models\mathcal{A}(\bigcirc y\forall x F)\\
\overset\cdot\implies & \mathcal{A}(\forall x\hspace{-0.2em}\bigcirc\hspace{-0.2em} y P(x,y))\models\mathcal{A}(\bigcirc y\forall x P(x,y)) & \text{(1)}\\

\overset\cdot\implies & \mathcal{A}_{[x\to u]} (\bigcirc y P(x,y)) = 1 \text{ for all $u\in U^\mathcal{A}$} \models \mathcal{A}(\bigcirc y\forall x P(x,y)) & \text{(2})\\

\overset\cdot\implies &\mathcal{A}_{[x\to u]} (\bigcirc y P(x,y)) = 1 \text{ for all $u\in U^\mathcal{A}$} \models \{u\in U^\mathcal{A}\mid\{\mathcal{A}_{[x\to u]}(\forall x P(x,y))=1\}\sim U^\mathcal{A} & \text{(3})\\


\overset\cdot\implies & \mathcal{A}_{[x\to u]} (\{u\in U^\mathcal{A} \mid\mathcal{A}_{[y\to v]} (P(x,y)= 1\}\sim U^\mathcal{A}) = 1 \text{ for all $v\in U^\mathcal{A}$} \models \{u\in U^\mathcal{A}\mid\{\mathcal{A}_{[y\to v]}(\forall x P(x,y))=1\}\sim U^\mathcal{A} & (\text{4})\\

\overset\cdot\implies & \mathcal{A}_{[x\to u]} (\{u\in U^\mathcal{A} \mid\mathcal{A}_{[y\to v]} (P(x,y)= 1\}\sim U^\mathcal{A}) = 1 \text{ for all $v\in U^\mathcal{A}$} \models \{u\in U^\mathcal{A}\mid\{\mathcal{A}_{[y\to v]}(\mathcal{A}_{[x\to u]} (P(x,y))=1 \text{ for all $v\in U^\mathcal{A}$})=1\}\sim U^\mathcal{A} & (\text{5})\\

\overset\cdot\implies & \mathcal A(\{u \in U^\mathcal A \mid \mathcal A_{[y\to v]} (P(y,u)=1\}\sim U^\mathcal A) =1 \text{ for all $v\in U^\mathcal A$}\models \{u\in U^\mathcal{A}\mid\{\mathcal{A}_{[y\to u]}(\mathcal{A} (P(u,y))=1 \text{ for all $v\in U^\mathcal{A}$})=1\}\sim U^\mathcal{A} &\text{(6)}\\

\overset\cdot\implies & \mathcal A(\{u \in U^\mathcal A \mid \mathcal A (P(v,u)=1\}\sim U^\mathcal A) =1 \text{ for all $v\in U^\mathcal A$}\models \{u\in U^\mathcal{A}\mid\{\mathcal{A}(\mathcal{A} (P(u,v))=1 \text{ for all $v\in U^\mathcal{A}$})=1\}\sim U^\mathcal{A} &\text{(7)}\\
\end{align}
$$

$$
\begin{align}
&(1) & \text{(Definition of $F$)}\\
&(2) & (\text{Definition 6.36. $\forall x F$})\\
&(3) & (\text{Semantics of $\bigcirc x F$})\\
&(4) &(\text{Semantics of $\bigcirc x F$})\\
&(5) &(\text{Definition 6.36. $\forall x F$})\\
&(6) &\text{[$x\to u$]}\\
&(7) &\text{[$y\to v$]}\\
\end{align}
$$

What this is saying in words is, that our chosen interpretation $\mathcal A$ is a model for the LHS (since, for all natural numbers $x \in \mathbb N^*$, there is a set of numbers $y_i \in \mathbb N^*$ equinumerous to the set of natural nubers ($\{y_i \in \mathbb N^*\} \sim \mathbb N^*$) that is larger than than $x$) but not a model for the RHS (since, not for every number $x_i \in \mathbb N$ all numbers $y_i \in \mathbb N$ are larger than that number). 

We have shown there exists some interpretation $\mathcal A$ that is suitable for both sides of the formula and is a model for $\forall x \hspace{-0.2em}\bigcirc \hspace{-0.2em} y F$ but not for $\bigcirc y \forall x F$.
$\square$


