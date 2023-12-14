

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

Disproven by counterexample. We want to show that there exists an interpretation $\mathcal A$ such that $(\bigcirc x_1^{\mathcal A} F^{\mathcal A}) \land (\bigcirc x_2^{\mathcal A} \lnot F^{\mathcal A})=1$, making the formula satisfiable.

Let $F$ be the formula $P(x)$



Let $\mathcal A=(U, \phi, \psi, \xi)$ be a suitable interpretation for the formula.
- Let $U^\mathcal A= \mathbb N^*$
- Let $\phi = \varnothing$
- Let $\psi = \{P^\mathcal A(x) = 1 \iff x\equiv_2 0, \ \text{i.e.} \ P A(x) = 1 \ \text{if and only if x is even}\}$
- Let $\xi = \varnothing$
 

$\mathcal{A}((\bigcirc x P(x))\land (\bigcirc x \lnot P(x)))$





$$\begin{align}
&\mathcal{A}((\bigcirc x P(x))\land (\bigcirc x \lnot P(x)))\\

\implies &\mathcal{A}((\bigcirc x P(x))) \enspace and\enspace \mathcal{A}((\bigcirc x \lnot P(x))) & (\text{Semantics of $\land$ Definition 6.24})\\

\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}_{[x\to u]}(P(x)) = 1\}\sim\mathbb{N} \enspace and \enspace\bigcirc x\lnot P(x) & (\text{semantics of $\bigcirc x_i$})\\

\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}_{[x\to u]}(P(x)) = 1\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \mathcal{A}_{[x\to u]}(\lnot P(x)) = 1\}\sim\mathbb{N} & (\text{semantics of $\bigcirc x_i$})\\

\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}(P(u) = 1)\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \mathcal{A}(\lnot P(u) = 1)\}\sim\mathbb{N} & ([x\to u])\\

\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}(P(u) = 1)\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \mathcal{A}(P(u) = 0)\}\sim\mathbb{N} & (\text{semantics of $\lnot$})\\

\implies&\{u\in U^\mathcal{A} \mid \text{$u$ is even})\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \text{$u$ is not even}\}\sim\mathbb{N} & (\text{interpretation of $P^\mathcal{A}(x)$})\\

\implies&\underbrace{\{u\in \mathbb{N} \mid \text{$u$ is even})\}\sim\mathbb{N}}_1 \enspace and\enspace\underbrace{\{u\in \mathbb{N} \mid \text{$u$ is not even}\}\sim\mathbb{N}}_2 & (\text{interpretation of $U^\mathcal{A}$})\\

\end{align}
$$



Let $U^{\mathcal A} = \mathbb N$, thus $|U^{\mathcal A}| = \infty$. Let $F^{\mathcal A}$ be a formula defined to apply the "evenness" predicate on $x$, i.e. $F^{\mathcal A}(x_1^{\mathcal A}) \equiv \exists x_2^{\mathcal A} (x_1^{\mathcal A} = 2 \cdot  x_2^{\mathcal A})$. 

This:

$\mathcal A(\bigcirc x_i F) =1 \iff \{u \in U^{\mathcal A}\ | \ \mathcal A_{[x_i\rightarrow u]} (F)=1\}\sim U^{\mathcal A}$

holds for our chosen interpretation, as well as does this:

$\mathcal A(\bigcirc x_i \lnot F) =1 \iff \{u \in U^{\mathcal A}\ | \ \mathcal A_{[x_i\rightarrow u]} (\lnot F)=1\}\sim U^{\mathcal A}$

In words;

"There exist a set of elements in $U^{\mathcal A}$ that make $F$ true, equinumerous to  $U^{\mathcal A}$. Or, there are infinitely many natural numbers that are even, as there are infinitely many natural numbers" and

There exist a set of elements in $U^{\mathcal A}$ that make $F$ false, equinumerous to  $U^{\mathcal A}$. Or, there are infinitely many natural numbers that are odd, as there are infinitely many natural numbers" "

This gives us $\mathcal A((\bigcirc x_1 F)\wedge (\bigcirc x_2 \lnot F))=1$ for our chosen interpretation $\mathcal A$, making the formula satisfiable.

$\square$
___

**b)** $\bigcirc x F \models \exists x F$

We proof this by showing that any interpretation that's suitable for both sides of the equation and is a model for $\bigcirc x F$ is also a model for $\exists x F$.





Since any $U^\mathcal A$ that is a model for the LHS is equinumerous to the set $\{u \in U^{\mathcal A}\ | \ \mathcal A_{[x_i\rightarrow u]} (F)=1\}$ and no $U^\mathcal A$ can be empty (as per Definition 6.34.), that same $\mathcal A$ is also a model for $\exists x F$, since 

**Definition 6.34.**
An interpretation or structure is a tuple $\mathcal A = (U, \phi, \psi, \xi)$ where
- $U$ is a non empty *universe*
- ...

$\square$
___


**c)** $\forall x \hspace{-0.2em}\bigcirc \hspace{-0.2em} y F \models \bigcirc y \forall x F$



$F \overset{def.}{=} x<y$ 

i.e.
LHS: für alle zahlen $x$, gibt es unendlich viele (equinumerous to $\mathbb N$) zahlen $y$ die grösser sind
RHS: für unendlich viele zahlen $y$, sind alle zahlen $x$ grösser






___


## 12.5
### (a)
We will disprove that $(\bigcirc x F)\land (\bigcirc x \lnot F)$ is *unsatisfiable*

Let $\mathcal{A}$ be a suitable interpretation for the formula
$$(\bigcirc x F)\land (\bigcirc x \lnot F)$$
Let $F$ be the following formula:
$$P(x)$$

We define $\mathcal{A}=(U,\phi,\psi,\xi)$ where:
1. {i} $U^\mathcal{A}=\mathbb{N}_{\setminus\{0\}}$
2. $\phi = \varnothing$ (as there is no *functions* in our formula **Def. 6.35**)
3. $\psi = \{P^\mathcal{A}(x)=1$ **iff** $x$ is *even* $(x\equiv_2 0) \}$
4. $\xi=\varnothing$ (as there is no *free* variable in our formula **Def. 6.35**)
___
Now evaluating our *suitable interpretation* of the formula:
$$\begin{align}
&\mathcal{A}((\bigcirc x P(x))\land (\bigcirc x \lnot P(x)))\\

\implies &\mathcal{A}((\bigcirc x P(x))) \enspace and\enspace \mathcal{A}((\bigcirc x \lnot P(x))) & (\text{Semantics of $\land$ Definition 6.24})\\

\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}_{[x\to u]}(P(x)) = 1\}\sim\mathbb{N} \enspace and \enspace\bigcirc x\lnot P(x) & (\text{semantics of $\bigcirc x_i$})\\

\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}_{[x\to u]}(P(x)) = 1\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \mathcal{A}_{[x\to u]}(\lnot P(x)) = 1\}\sim\mathbb{N} & (\text{semantics of $\bigcirc x_i$})\\

\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}(P(u) = 1)\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \mathcal{A}(\lnot P(u) = 1)\}\sim\mathbb{N} & ([x\to u])\\

\implies&\{u\in U^\mathcal{A} \mid \mathcal{A}(P(u) = 1)\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \mathcal{A}(P(u) = 0)\}\sim\mathbb{N} & (\text{semantics of $\lnot$})\\

\implies&\{u\in U^\mathcal{A} \mid \text{$u$ is even})\}\sim\mathbb{N} \enspace and\enspace\{u\in U^\mathcal{A} \mid \text{$u$ is not even}\}\sim\mathbb{N} & (\text{interpretation of $P^\mathcal{A}(x)$})\\

\implies&\underbrace{\{u\in \mathbb{N} \mid \text{$u$ is even})\}\sim\mathbb{N}}_1 \enspace and\enspace\underbrace{\{u\in \mathbb{N} \mid \text{$u$ is not even}\}\sim\mathbb{N}}_2 & (\text{interpretation of $U^\mathcal{A}$})\\

\end{align}
$$
As $(1)$ and $(2)$ hold true (Proof below), the whole formula is true. This shows that the given formula is *satisfiable* and disproves statement given at [[#(a)]].
$$
\:\:\qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \square
$$
___
#### Proof of (1)
$S = \{x\in\mathbb{N}\mid x \text{ is even}\}\sim \mathbb{N} = U^\mathcal{A}$

This holds true, as there exists a bijection $f:\mathbb{N}\to S$

We define $f(x)$ for an arbitrary $x$ in $\mathbb{N}$ as twice the value of $x$.
$(f(x) = 2\cdot x)$
We can see that $x\in\mathbb{N}, f(x)\in S$ as $2\cdot x$ will always be *even*. 

___
#### Proof of (2) → Example 3.57

$T = \{x\in\mathbb{N} \mid x \text{ is not even}\}\sim S \sim \mathbb{N} = U^\mathcal{A}$

This again holds true, as there exists a bijection $f: S\to T$
We define $f(x)$ for an arbitrary $x$ in $\mathbb{N}$ as one less than the value of $x$.
$(f(x) = x - 1)$
We can see that $x \in T, f(x)\in T$ as $x-1$ for an *even* number will always be *odd*.
$T\sim\mathbb{N}$ holds because of transitivity of the *equinumerous relation*.[^1]
___



### (b)
We will prove, that this statement holds *true*.
$$\bigcirc_xF\models\exists x F$$
It suffices to show, that $\mathcal{A}(\exists xF)=1$ if $\mathcal{A}(\bigcirc xF)=1$ for any *suitable* $\mathcal{A}$.

Let's assume $\mathcal{A}(\bigcirc xF)=1$.

$$
\begin{align}
&\mathcal{A}(\bigcirc xF)=1\\
\implies&\{u\in U^\mathcal{A}\mid\mathcal{A}_{[x\to u]}(F)=1\}\sim U^\mathcal{A} & (\text{Semantics of $\bigcirc x_i$})(1)\\
&U^\mathcal{A}\text{ has has more than 0 elements} &(\text{Definition 6.34 $U\neq\varnothing$})(2)\\
(1)(2)\implies & \{u\in U^\mathcal{A}\mid\mathcal{A}_{[x\to u]}(F)=1\}\text{ has more than 0 elements}\\
\implies & \mathcal{A}_{[x\to u]}(F)=1\text{ for atleast 1 element} & (\text{trivial})\\
\implies & \mathcal{A}(\exists xF)=1 & (\text{Definition 6.36 $\mathcal{A}(\exists x F)$})\\
\end{align}
$$
This shows that $\bigcirc_xF\models\exists x F$ for any *suitable interpretation*.
$$
\:\:\qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \square
$$
### (c)

We will disprove the following statement $\forall x\bigcirc y F\models\bigcirc y\forall x F$.

Let $F$ be the following formula:
$$P(x, y)$$

We define $\mathcal{A}=(U,\phi,\psi,\xi)$ where:
1. {i} $U^\mathcal{A}=\mathbb{N}_{\setminus\{0\}}$
2. $\phi = \varnothing$ (as there is no *functions* in our formula **Def. 6.35**)
3. $\psi = \{P^\mathcal{A}(x, y)=1$ **iff** $y$ is *greater* than $x$ $(y>x)\}$
4. $\xi=\varnothing$ (as there is no *free* variable in our formula **Def. 6.35**)
___
Now evaluating our *suitable interpretation* of the first part of the formula:
§
___
$$\begin{align}

&\mathcal{A}(\forall x\bigcirc y P(x,y))\models\mathcal{A}(\bigcirc y\forall x P(x,y))\\

\implies & \mathcal{A}_{[x\to u]} (\bigcirc y P(x,y)) = 1 \text{ for all $u\in U^\mathcal{A}$} \models \mathcal{A}(\bigcirc y\forall x P(x,y)) & (\text{Definition 6.36 ($\forall x F$)})\\

\implies & \mathcal{A}_{[x\to u]} (\bigcirc y P(x,y)) = 1 \text{ for all $u\in U^\mathcal{A}$} \models \{u\in U^\mathcal{A}\mid\{\mathcal{A}_{[x\to u]}(\forall x P(x,y))=1\}\sim U^\mathcal{A} & (\text{semantics of ($\bigcirc x F$)})\\

\implies & \mathcal{A}_{[x\to u]} (\{u\in U^\mathcal{A} \mid\mathcal{A}_{[y\to u]} (P(x,y)= 1\}\sim U^\mathcal{A}) = 1 \text{ for all $u\in U^\mathcal{A}$} \models \{u\in U^\mathcal{A}\mid\{\mathcal{A}_{[y\to u]}(\forall x P(x,y))=1\}\sim U^\mathcal{A} & (\text{semantics of ($\bigcirc x F$)})\\

\implies & \mathcal{A}_{[x\to u]} (\{u\in U^\mathcal{A} \mid\mathcal{A}_{[y\to u]} (P(x,y)= 1\}\sim U^\mathcal{A}) = 1 \text{ for all $u\in U^\mathcal{A}$} \models \{u\in U^\mathcal{A}\mid\{\mathcal{A}_{[y\to u]}(\mathcal{A}_{[x\to u]} (P(x,y))=1 \text{ for all $u\in U^\mathcal{A}$})=1\}\sim U^\mathcal{A} & (\text{Definition 6.36 ($\forall x F$)})\\

\end{align}$$


[^1] *$\sim$ is an equivalence relation* **Lemma 3.15 (i)**, *equivalence relations are transitive* **Def. 3.19** and *definition of transitivity* **Def. 3.17**.
















































it's important to note that the bijection doesn't mean the two sets are the same size, example $\mathbb N \sim \mathbb Q$ but they aren't the same "size".


rough idea:
a) false -> equinumerous on infinite set
b) true -> U^s can't be empty
c) false -> forall, equinumerous not equal equinumerous many (infinite) forall



widerspruch, interpretation erfinden die aussage wahr macht und zur kontradiktion führt

models beweisen: eine interpretation die für beide seiten passend ist und ein model ist für linke seite und zeigen, dass diese interpretation auch ein model ist für die rechte seite
