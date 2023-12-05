

## 11.4
let $\Sigma = (\mathcal{S}, \mathcal{P}, \tau, \phi)$ be a proof system. Consider the proof system. $\overline{\Sigma} = (\mathcal{S},\mathcal{P},\overline{\tau},\overline{\phi})$, where for all $s\in\mathcal{S}$ and $p \in \mathcal{P}$ we define
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


Let's tackle a) first. 


**Definition 6.2.**
A Proof System is sound if no false statement has a proof, i.e. for all statements for which there exists a proof such that the verification function returns true, the statement must be true.

**Definition 6.3.**
A Proof System is complete if every true statement has a proof, i.e. for all true statements there exists a proof such that the verification function returns true.




## a)

If $\Sigma$ is sound that means

"for all statements $s \in \mathcal S$ for which there exists $p \in \mathcal P$ such that $\phi(s,p) = 1$ we have $\tau(s)=1$",

which is the same as to say that

"there does not exist an $s \in \mathcal S$ with $\tau(s) = 0$ such that there exists a $p \in \mathcal P$ such that $\phi(s, p) =1$".

Which is the same as to say that 

"there exists no pair $(s \in \mathcal S, p \in \mathcal P)$ such that $\tau(s) = 0$ and $\phi (s,p) = 1$".

Since $\overline \tau (s)$ and $\overline \phi (s, p)$ in $\overline \Sigma$ are, per definition the inverse of the the bit $b \in \{0, 1\}$ in $\Sigma$, where $b= \phi(s,p)$ or $b = \tau(s)$.
All this essentially tells us, that if $\Sigma$ is sound, there is no pair $(s \in \mathcal S, p \in \mathcal P)$ in $\overline \Sigma$ for which $\overline \tau(s) =1$ and $\overline \phi (s,p) = 0$.

That is the same as to say that

"there is no statement $s \in \mathcal S$  that is also true (i.e. $\overline \tau(s)= 1$) for which there exists no $p \in \mathcal P$ such that $\overline \phi (s,p) =0$."

So all true statements in $\overline \Sigma$ have a proof $p \in \mathcal P$ for which $\overline \phi(s, p)= 1$. Thus, if $\Sigma$ is sound $\overline \Sigma$ is complete.
$\square$



## b)

If $\Sigma$ is complete that means

"for all true statements there exists a proof such that the verification function returns true."








$$sound \implies \nexists  s \in \mathcal{S}\ |\ \tau(s) = 0\ and\ \exists p \in \mathcal{P}\ |\ \phi(s, p)=1
$$
$$
complete \implies \forall s \in \mathcal{S}\ | \ \tau(s) = 1, \ \exists p \in \mathcal{P}\ |\ \phi(s, p) = 1
$$





$$
\begin{align}
\Sigma ( \nexists  s \in \mathcal{S}\ |\ \tau(s) = 0\ and\ \exists p \in \mathcal{P}\ |\ \phi(s, p)=1) \implies  \overline{\Sigma}(\forall s \in \mathcal{S}\ | \ \overline{\tau}(s) = 1, \ \exists p \in \mathcal{P}\ |\ \overline{\phi}(s, p) = 1) \\\\

\text{if for all s in S and p in P, tau(s) = 0 implies phi(s, p) = 0}\\


\nexists  s \in \mathcal{S}\ |\ \tau(s) = 0\ and\ \exists p \in \mathcal{P}\ |\ \phi(s, p)=1

\end{align}
$$




$$
\begin{align}
&\text{The proof System }\Pi = (\mathcal S, \mathcal P, \tau, \phi) \text{ is sound if} \\
&\forall (s \in \mathcal{S}) \ |\ \exists (p \in \mathcal{P}), (\phi(s, p) = 1) \implies \tau(s) = 1
\end{align}
$$ 












Definition 6.22.
A calculus $K$ is *sound* if for every set $M$ of formulas and every formula $F$, if $F$ can be derived from $M$ then $F$ is also a logical consequence of $M$:
$$
M \vdash_K F \implies M \models F, \\
$$
and $K$ is *complete* if for every $M$ and $F$, if $F$ is a logical consequence of $M$, then $F$ can also be derived from $M$: 
$$
M \models F \implies M \vdash_K F.
$$

A calculus $K$ is hence sound and complete if
$$
M \vdash K_F \iff M \models F
$$







___

Let's analyze the statements and try to prove or disprove them:

a) If $\Sigma$ is sound, then $\overline{\Sigma}$ is complete.

Recall that a proof system is sound if every provable statement is true. In this case, $\Sigma$ is sound, so every statement provable in $\Sigma$ is true. Now, we want to show that $\overline{\Sigma}$ is complete. Completeness means that every true statement is provable.

Let's consider a statement $\overline{p}$ in $\overline{\Sigma}$. According to the definition, $\overline{\phi}(s, p) = 1 \iff \phi(s, p) = 0$. Therefore, a true statement in $\overline{\Sigma}$ corresponds to a false statement in $\Sigma$.

Since $\Sigma$ is sound, if a statement is provable in $\Sigma$, it must be true. Now, let's consider the negation of a statement that is true in $\Sigma$, denoted as $\neg p$. In $\overline{\Sigma}$, this corresponds to $\overline{p}$, and we want to show that $\overline{p}$ is provable.

Since $\Sigma$ is sound, $\neg p$ is true in $\Sigma$, which means it is false in $\overline{\Sigma}$. Therefore, $\overline{p}$ is provable in $\overline{\Sigma}$.

In summary, if $\Sigma$ is sound, then every false statement in $\Sigma$ is provable in $\overline{\Sigma}$. Therefore, $\overline{\Sigma}$ is complete.

b) If $\Sigma$ is complete, then $\overline{\Sigma}$ is sound.

Recall that a proof system is complete if every true statement is provable. Now, we want to show that $\overline{\Sigma}$ is sound, meaning every provable statement is true.

Consider a statement $\overline{p}$ that is provable in $\overline{\Sigma}$. According to the definition, $\overline{\phi}(s, p) = 1 \iff \phi(s, p) = 0$. Therefore, a provable statement in $\overline{\Sigma}$ corresponds to a false statement in $\Sigma$.

Now, if $\Sigma$ is complete, every true statement is provable in $\Sigma$. Since $\overline{p}$ corresponds to a false statement in $\Sigma$, it means that the negation of $\overline{p}$, denoted as $\neg p$, is true in $\Sigma$.

Since $\neg p$ is true in $\Sigma$, it must be false in $\overline{\Sigma}$, and this corresponds to $\overline{p}$. Therefore, every provable statement in $\overline{\Sigma}$ is true, and $\overline{\Sigma}$ is sound.

In summary, statement b is true: If $\Sigma$ is complete, then $\overline{\Sigma}$ is sound.
