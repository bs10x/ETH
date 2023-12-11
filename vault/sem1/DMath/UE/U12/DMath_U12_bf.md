

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


$\mathcal A(\bigcirc x_i F) =1 \iff \{u \in U^{\mathcal A}\ | \ \mathcal A_{[x_i\rightarrow u]} (F)=1\}\sim U^{\mathcal A}$
-->
if there exists a bijection from the set of all elements in U such that the formula is true, to the set of all elements, the formula is true.

it's important to note that this bijection doesn't mean the two sets are the same size, example $\mathbb N \sim \mathbb Q$ but they aren't the same size.