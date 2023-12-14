

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

We proof this by showing that any interpretation that suitable to both sides of the equation and is a model for $\bigcirc x F$ is also a model for $\exists x F$. 



**Definition 6.34.**
An interpretation or structure is a tuple $\mathcal A = (U, \phi, \psi, \xi)$ where
- $U$ is a non empty *universe*
- ...

$\square$
___


**c)** $\forall x \hspace{-0.2em}\bigcirc \hspace{-0.2em} y F \models \bigcirc y \forall x F$



forall, equinumerous not equal equinumerous many (infinite) forall


F = x > y


$F \over











it's important to note that the bijection doesn't mean the two sets are the same size, example $\mathbb N \sim \mathbb Q$ but they aren't the same size.

geschriebenes "und" verwenden, bei applikation von semantik regeln.


rough idea:
a) false -> equinumerous on infinite set
b) true -> U^s can't be empty
c) false -> forall, equinumerous not equal equinumerous many (infinite) forall

widerspruch, interpretation erfinden die aussage wahr macht und zur kontradiktion führt

models beweisen: eine interpretation die für beide seiten passend ist und ein model ist für linke seite und zeigen, dass diese interpretation auch ein model ist für die rechte seite
