
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ralph

<!-- badges: start -->

<!-- badges: end -->

The goal of `ralph` is to demonstrate the construction of a package by
providing a function to compute a correlation and display the result as
a dataframe.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("nxskok/ralph")
```

## Thanks

to Shannon Pileggi (@pipinghotdata) for the worked example
[here](https://www.pipinghotdata.com/posts/2020-10-25-your-first-r-package-in-1-hour/).
This is a shameless rip-off of that.

## Example

This is a basic example:

``` r
library(ralph)
## basic example code
compute_corr(mtcars, mpg, wt)
#> # A tibble: 1 × 2
#>   correlation     pval
#>         <dbl>    <dbl>
#> 1      -0.868 1.29e-10
```
