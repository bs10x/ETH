

## 11.4
Let $\Sigma = (\mathcal{S}, \mathcal{P}, \tau, \phi)$ be a proof system. Consider the proof system. $\overline{\Sigma} = (\mathcal{S},\mathcal{P},\overline{\tau},\overline{\phi})$, where for all $s\in\mathcal{S}$ and $p \in \mathcal{P}$ we define
$$
\begin{align}
\overline{\tau}(s) = 1 &\iff \tau(s) = 0, \\
\overline{\phi}(s, p) = 1 &\iff \phi(s, p) = 0. \\
\end{align}
$$
Prove or disprove the following statements.
a) If $\Sigma$ is sound, then $\overline{\Sigma}$ is complete.
b) If $\Sigma$ is complete, then $\overline{\Sigma}$ is sound.




Through tertium non datur we can assume;
$$
\begin{align}
\overline{\tau}(s) = 0 &\iff \tau(s) = 1, \\
\overline{\phi}(s, p) = 0 &\iff \phi(s, p) = 1. \\
\end{align}
$$

>[!quote] **Definition 6.2.**
A Proof System is sound if no false statement has a proof, i.e. for all statements for which there exists a proof $p \in \mathcal P$ such that the verification function returns true $\phi(s, p)=1$, the statement must be true $\tau(s)=1$.

>[!cite] **Definition 6.3.**
A Proof System is complete if every true statement has a proof, i.e. for all statements $s \in \mathcal S$ that are true, there exists a proof $p\in \mathcal P$ such that the verification function returns true $\phi(s,p) =1$.


## a)

For the scope of this exercise, we assume that $\mathcal S \neq \varnothing$ and $\mathcal P \neq \varnothing$.


If $\Sigma$ is sound that means "for all statements $s \in \mathcal S$ for which there exists a $p \in \mathcal P$ with $\phi(s,p) = 1$ we have $\tau(s)=1$", which is the same as to say that "there does not exist an $s \in \mathcal S$ with $\tau(s) = 0$ such that there exists a $p \in \mathcal P$ with $\phi(s, p) =1$".

Which is the same as to say that "there does not exist an $s \in \mathcal S$ with $\overline \tau (s) = 1$ such that there exists a $p \in \mathcal P$ with $\overline \phi (s, p) =0$". Since $\overline \tau (s)$ and $\overline \phi (s, p)$ in $\overline \Sigma$ are, per definition the opposite of $\tau(s)$ and $\phi(s,p)$ in $\Sigma$.

Which is to say that "for all $s \in \mathcal S$ with $\overline \tau(s) = 1$ there exists a $p \in \mathcal P$ such that $\overline \phi(s,p) = 1$". All this essentially tells us, that if $\Sigma$ is sound, there is no $s \in \mathcal S$ in $\overline \Sigma$ for which $\overline \tau(s) =1$ and $\overline \phi (s,p) = 0$.

So all true statements in $\overline \Sigma$ have a proof $p \in \mathcal P$ for which $\overline \phi(s, p)= 1$. Thus, if $\Sigma$ is sound $\overline \Sigma$ is complete (if we assume $\mathcal S, \mathcal P \neq \varnothing$).
$\square$

___

If we consider $\mathcal S$ and $\mathcal P$ to possibly be the empty set, the implication could be disproven by contradiction as follows:

>Let $\Sigma = \{\mathcal S, \mathcal P, \tau, \phi\}$ where $\mathcal S = \{0 \}$, $\mathcal P = \varnothing$, $\tau(0)=0$ and $\phi : \mathcal S \times \mathcal P \rightarrow \{0,1\}$
>(Definition of cartesian product between set and empty set implies $\mathcal S \times \varnothing = \varnothing$)
>
>Let $\overline \Sigma = \{\mathcal S, \mathcal P, \overline\tau, \overline\phi\}$ where $\mathcal S = \{0 \}$, $\mathcal P = \varnothing$, $\overline\tau(0)=1$ and $\overline\phi : \mathcal S \times \mathcal P \rightarrow \{0,1\}$ 

$\Sigma$ is sound, as there is no $s \in \mathcal S$ such that $\tau(s)=1$ (Definition of Sound). Let's assume, for the sake of contradiction, that the implication holds, i.e. for all $\overline\tau(s)= 1$ there exists a $p \in \mathcal P$ such that $\overline\phi(s, p) = 1$. However, we arrive at a contradiction, as we defined $\mathcal P = \varnothing$. Thus there exists no $p \in \mathcal P$ such that $\overline\phi(s, p)= 1$ if we consider $\mathcal P$ to be the empty set. 

___

## b)

For the scope of this exercise we again assume that $\mathcal S \neq \varnothing$ and $\mathcal P \neq \varnothing$.


If $\Sigma$ is complete that means "for all statements $s\in \mathcal S$ with $\tau(s)=1$ there exists a proof $p \in \mathcal P$ such that $\phi(s, p) = 1$".

Which (per definition) is the same as to say "for all statements $s \in \mathcal S$ with $\overline \tau(s) = 0$ there exists a proof $p \in \mathcal P$ such that $\overline \phi (s, p)=0$ in $\overline\Sigma$".

Which gives us no further information on the soundness of the proof system $\overline\Sigma$, as all we know is that for all false statements there exists a proof, such that the verification of that statement with that proof is false.

___

Let's disprove the implication with a counterexample:

>Let $\Sigma = \{\mathcal S, \mathcal P, \tau, \phi\}$ where $\mathcal S = \{0,1\}$, $\mathcal P = \{0,1\}$, $\tau(1)=1, \tau(0)=0$ and $\phi(1,0)= 0, \ \phi(1,1)= 1, \ \phi(0,0)=0, \ \phi(0,1)=0$.
>
>Let $\overline\Sigma = \{\mathcal S, \mathcal P, \tau, \phi\}$ where $\mathcal S = \{0, 1\}$, $\mathcal P = \{0,1\}$, $\overline\tau(1)=0$ and $\overline\phi(1,0)= 1, \ \overline\phi(1,1)= 0$.

As we can clearly see, $\Sigma$ is complete (per definition of complete) but $\overline\Sigma$ is not sound (since there exist a $s \in \mathcal S$ such that $\overline\tau(s) =0$ but $\overline\phi (s, p)=1$, i.e. a false statement has a proof). The implication is thus disproven by counterexample.

$\square$
