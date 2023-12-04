

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



Definition 6.22.
A calculus $K$ is *sound* if for every set $M$ of formulas and every formula $F$
