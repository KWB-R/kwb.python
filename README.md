[![R-CMD-check](https://github.com/KWB-R/kwb.python/workflows/R-CMD-check/badge.svg)](https://github.com/KWB-R/kwb.python/actions?query=workflow%3AR-CMD-check)
[![pkgdown](https://github.com/KWB-R/kwb.python/workflows/pkgdown/badge.svg)](https://github.com/KWB-R/kwb.python/actions?query=workflow%3Apkgdown)
[![codecov](https://codecov.io/github/KWB-R/kwb.python/branch/main/graphs/badge.svg)](https://codecov.io/github/KWB-R/kwb.python)
[![Project Status](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/kwb.python)]()

# kwb.python

R Package with functions for working with Python by
enhancing the use of R package
[reticulate](https://github.com/rstudio/reticulate).

## Installation

For details on how to install KWB-R packages checkout our [installation tutorial](https://kwb-r.github.io/kwb.pkgbuild/articles/install.html).

```r
### Optionally: specify GitHub Personal Access Token (GITHUB_PAT)
### See here why this might be important for you:
### https://kwb-r.github.io/kwb.pkgbuild/articles/install.html#set-your-github_pat

# Sys.setenv(GITHUB_PAT = "mysecret_access_token")

# Install package "remotes" from CRAN
if (! require("remotes")) {
  install.packages("remotes", repos = "https://cloud.r-project.org")
}

# Install KWB package 'kwb.python' from GitHub
remotes::install_github("KWB-R/kwb.python")
```

## Documentation

Release: [https://kwb-r.github.io/kwb.python](https://kwb-r.github.io/kwb.python)

Development: [https://kwb-r.github.io/kwb.python/dev](https://kwb-r.github.io/kwb.python/dev)
