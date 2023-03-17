<!-- input/deck.md -->

# Formulas for Machine Learning exam (AU, winter 2022)

## Formula for entropy for a leaf?

\\[H(S) = - \sum^k_{i=1}(p_i log_2(p_i))\\]

Where pi is:
\\[p_i = \frac{n_i}{n}\\]

Where \\(n_i\\) is number of points with label \\(i\\), and \\(n\\) is the total number of points.

## Formula for in-sample error

\\[E_{in}(h) = \frac{1}{n} \sum_{i = 1}^n L(h(x_i), f(x_i))\\]

## Formula for out-of-sample error

\\[E_{out} = \mathbb{E}_D [L(h(x),f(x))]\\]

## Formula for Hoeffding inequality with \\(M\\) hypothesis

\\[P(|E_{in}(h) - E_{out}(h)| > \epsilon) \leq 2Me^{-2\epsilon^2 n}\\]

## Hoeffding inequality with VC-dimension \\(d\\)

\\[P(|E_{in}(h) - E_{out}(h)| > \epsilon) \leq 8((2n)^d +1)e^{-\epsilon^2 n/8}\\]

## In the bias-variance trade-off, what is the formula for bias?

\\[bias = \mathbb{E}_x[(\bar{h}(x) -f(x))^2]\\]

## In the bias-variance trade-off, what is the formula for variance?

\\[variance = \mathbb{E}_x[\mathbb{E}_D[(h^D(x) - \bar{h}(x))^2]]\\]

## \\(bias + variance = ?\\)

\\[E_D[E_{out}(h^D)]\\]

## Hoeffding with infinite hypothesis

\\[P(|E_{in}(h) - E_{out}(h)| > \epsilon) \leq 8m_H(2n)e^{-\epsilon^2 n/8}\\]

## What is the formula for the growth function, and what does it mean?

\\[m_H(n) = max_{x_1...x_n \in X} |\{(h(x_1),...,h(x_n)) : h \in H\}|\\]

That is, the maximum amount of possible permutations of \\(n\\) points given hypothesis set \\(H\\).

## What is the formula for the sigmoid/logistic function?

\\[\sigma (z) = \frac{1}{1 + e^{-z}} = \frac{e^z}{1+e^z}\\]

## In linear regression with a data matrix \\(X\\), vector of labels \\(Y\\) and parameters \\(w\\) (assuming the bias is hardcoded into the first coordinate), what is the gradient of the loss function with respect to \\(w\\) (if we do not normalize the least squares loss by \\(\frac{1}{n}\\))?

\\[\triangledown_w l(w) = 2(X^T Xw - X^T y)\\]

## In linear regression with a data matrix \\(X\\), vector of labels \\(y\\) and parameters \\(w\\) (assuming the bias is hardcoded into the first coordinate), what is the optimal \\(w\\)?

\\[w = (X^T X)^{-1} X^T y\\]

## What is the formula for the derivative of the sigmoid function?

\\[\sigma'(z) = \sigma(z)\sigma(-z)\\]

## Formula for document frequency?

\\[df(t) = \frac{|\{d_i \ : \ t \in d_i\}|}{n}\\]

That is, how many of \\(n\\) documents contains the word \\(t\\).

## Formula for inverse document frequency?

\\[idf(t) = \ln \left( \frac{1}{df(t)} \right) = \ln \left( \frac{n}{|\{d_i : t \in d_i\}|} \right)\\]

## In Gradient boosting, what is the formula to find the next iterative prediction, \\(\hat{y} = F_i(x)\\), given the previous model \\(Fi-1\\)?

\\[
\hat{y} = - \begin{pmatrix}
    L' (F_{t-1} (x_1), y_1) \\
    \vdots \\
    L' (F_{t-1} (x_n), y_n)
\end{pmatrix}
\\]

## What is the formula for entropy for a tree?

\\[\sum_v \frac{|S_v|}{n}H(S_v)\\]
Where \\(H(S)\\) is the formula for entropy in a leaf.

So, we sum over all leaves, calculate entropy in them, weighted by the fraction of training points ending up there.

## For SVM's, what is the formula for functional margin?

\\[\hat{\gamma} = min_i(\hat{\gamma}_i)\\]

Where:

\\[\hat{\gamma}_i = y_i(w^Tx_i+b)\\]

Where \\(y_i\\) is the label of point \\(x_i\\).

## For SVM's, what is the formula for geometric margin?

\\[\gamma = min_i(\gamma_i)\\]

Where:

\\[\gamma_i = \frac{\hat{\gamma_i}}{||w||}\\]

Where \\(y_i\\) is the label of point \\(x_i\\).

## What is the formula for the softmax function?

\\[\text{softmax}(z)_j = \frac{e^{z_j}}{\sum_{i=1}^K e^{z_i}}\\]

## In-sample error for the logistic regression

\\[E_{in} = - \frac{1}{n} \sum_{i=1}^n \text{ln}(y_i^T \text{softmax}(x^T_i W))\\]

## Predict function for multinomial regression

\\[\text{predict}(x) = \text{softmax}(XW)\\]

## Multinomial regression: Formula for the gradient of in-sample error:

\\[\nabla E_{in}(W) = - \frac{1}{n} X^T (Y - \text{softmax}(XW))\\]

