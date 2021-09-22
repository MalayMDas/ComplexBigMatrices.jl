# ComplexBigMatrices

This module calculates exp(), log() of complex BigFloat Matrices.

# Sample usage
```
setprecision(512)
a = [[1 1.0im];[1.0im 1]];
biga = Complex{BigFloat}.(a)

using ComplexBigMatrices
eigen(biga)
exp(biga)
log(biga)
```
