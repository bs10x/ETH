
## 9.4
In this exercise, you prove the remark in Chapter 5, Footnote 20 of the lecture notes. Consider an algebra $\langle R; +, -, 0, \cdot, 1\rangle$ such that:

i) $\langle R; +, -, 0\rangle$ is a group.
ii) $\langle R; \cdot, 1\rangle$ is a monoid.
iii) $a(b + c) = ab + ac$ and $(b + c)a = ba + ca$ for all $a, b, c, \in R$.

Prove that such an algebra satisfies Definition 5.18 in the lecture notes. Each step should consist of one or more applications of the given axioms, and the axioms used should be made explicit.

Hint: consider (1 + 1)(a + b).


$$
\begin{align}
ab &= (1+1)(a+b) \qquad\qquad\text{(iii)}\\
&= 1(a+b) + 1(a+b) \\
&= \\
&= \\
&= \\
&= \\
&= \\
&= (a+b) (1+1)\\
&= a(1+1) + b(1+1)\\
&= ba
\end{align}
$$



$$
\begin{align}
x = y & \overset{\cdot}{\implies} \\
& \overset{\cdot}{\implies} \\
& \overset{\cdot}{\implies} \\
& \overset{\cdot}{\implies} \\
& \overset{\cdot}{\implies} \\
& \overset{\cdot}{\implies} ab = ba\\
\end{align}
$$






$$
\begin{align}
(-a) b &= 0 + (-a) b \qquad \text{G2 von \langle R; +, -, 0, $\cdot$, 1\rangle}\\
& = a 0 + (-a) b \qquad\text{a0 = 0}\\
& = a (-b + b) + (-a) b \qquad \text{G3 von ...}\\
& = a (-b) + a b + (-a) b \qquad\text{Distributiv. von R.} \\
& = a(-b) + (a+(-a)) b \qquad \text{} \\
& = a(-b) + 0b \qquad \text{} \\
& = a(-b) + 0 \qquad \text{} \\
& = a(-b) \\
& \square
\end{align}
$$



$$

$$




Definition 5.18.
A ring $\langle R; +, -, 0, \cdot, 1\rangle$ is an algebra for which
(i) $\langle R; +, -, 0\rangle$ is a commutative group.
(ii) $\langle R; \cdot, 1\rangle$ is a monoid.
(iii) $a(b + c) = (ab) + (ac)$ and $(b + c)a = (ba) + (ca)$ for all $a, b, c \in R$ (left and right distributive laws).

(20) A ring is called commutative if multiplication is commutative $(ab = ba)$.








Lemma 5.17. For any ring $\langle R; +, -, 0, \cdot, 1\rangle$, and for all $a, b \in R$,
(i) $0a = a0 = 0$
(ii)$(−a)b = −(ab)$
(iii) $(−a)(−b) = ab$
(iv) If $R$ is non-trivial (i.e., if it has more than one element), then $1 \neq 0$







// TODO //


Let's proceed with the proof:

Consider the expression (1+1)(�+�)(1+1)(a+b). We can simplify this expression using the distributive property:

(1+1)(�+�)=1(�+�)+1(�+�)(1+1)(a+b)=1(a+b)+1(a+b)

Now, using the distributive property again, we get:

1(�+�)+1(�+�)=�+�+�+�1(a+b)+1(a+b)=a+b+a+b

Combine like terms:

�+�+�+�=(�+�)+(�+�)a+b+a+b=(a+a)+(b+b)

Now, let's use the associativity property of addition in the group ⟨�;+,−,0⟩⟨R;+,−,0⟩:

(�+�)+(�+�)=�+(�+�)+�(a+a)+(b+b)=a+(a+b)+b

Now, apply the given distributive property �(�+�)=��+��a(b+c)=ab+ac:

�+(�+�)+�=�+��+�a+(a+b)+b=a+ab+b

Now, use the commutativity property of addition in the group ⟨�;+,−,0⟩⟨R;+,−,0⟩ (since �a and �b are elements of this group):

�+��+�=�+�+��a+ab+b=a+b+ab

Now, use the given distributive property (�+�)�=��+��(b+c)a=ba+ca:

�+�+��=�+�+��a+b+ab=a+b+ba

Finally, subtract �+�a+b from both sides:

��=��ab=ba

This completes the proof that ��=��ab=ba for all �,�∈�a,b∈R, and the algebra satisfies Definition 5.18 in the lecture notes.







