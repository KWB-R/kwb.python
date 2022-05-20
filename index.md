[![R-CMD-check](https://github.com/KWB-R/kwb.python/workflows/R-CMD-check/badge.svg)](https://github.com/KWB-R/kwb.python/actions?query=workflow%3AR-CMD-check)
[![pkgdown](https://github.com/KWB-R/kwb.python/workflows/pkgdown/badge.svg)](https://github.com/KWB-R/kwb.python/actions?query=workflow%3Apkgdown)
[![codecov](https://codecov.io/github/KWB-R/kwb.python/branch/main/graphs/badge.svg)](https://codecov.io/github/KWB-R/kwb.python)
[![Project Status](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/kwb.python)]()

R Package with functions for working with Python by
enhancing the use of R package
[reticulate](https://github.com/rstudio/reticulate).

## Installation

For installing the latest release of this R package run the following code below:

```r
# Enable repository from kwb-r
options(repos = c(
  kwbr = 'https://kwb-r.r-universe.dev',
  CRAN = 'https://cloud.r-project.org'))
  
# Download and install kwb.swmm in R
install.packages('kwb.python')

# Browse the kwb.swmm manual pages
help(package = 'kwb.python')
```
## Usage 

Checkout the [Tutorial](articles/tutorial.html) article on how to use this R package.
