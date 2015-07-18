
### 1. Fisher transformation
First we need to trasform the correlation into Fisher's Z
\[{z_r} = {\tanh ^{ - 1}}(r) = \frac{1}{2}{\log _e}\left( {\frac{{1 + r}}{{1 - r}}} \right)\]
```{r FisherZ, echo=TRUE, results='show', message=FALSE}
```


### 2. CI for Zeta
Defining the 100(1 - alpha/2) as the percentage point
\[{z_{(1 - \alpha /2)}}\]

```{r alpha_limit, echo=TRUE, results='hide', message=FALSE}
```

we compute confidence limits as
\[\begin{array}{l}
{\zeta _{low}} = {z_r} - {z_{(1 - \alpha /2)}}\sqrt {\frac{1}{{n - 3}}} \\
{\zeta _{high}} = {z_r} + {z_{(1 - \alpha /2)}}\sqrt {\frac{1}{{n - 3}}}
\end{array}\]

```{r confidence_limits, echo=TRUE, results='show', message=FALSE}
```

### 3. CI for correlation
Now we can transformed these computed confidence limits to obtain confidence intervals for the correlation
\[\begin{array}{l}
{r_{low}} = \tanh ({\zeta _{low}}) = \frac{{\exp (2{\zeta _{low}}) - 1}}{{\exp (2{\zeta _{low}}) + 1}}\\
{r_{high}} = \tanh ({\zeta _{high}}) = \frac{{\exp (2{\zeta _{high}}) - 1}}{{\exp (2{\zeta _{high}}) + 1}}
\end{array}\]

```{r ci_correlation, echo=TRUE, results='show', message=FALSE}
```

