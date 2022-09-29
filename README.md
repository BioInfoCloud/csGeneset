
# csGeneset

<!-- badges: start -->
<!-- badges: end -->

The gene set used for enrichment analysis

## Installation

You can install the development version of csGeneset from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("BioInfoCloud/csGeneset")
```

## Example

``` r
library(csGeneset)
listMSigDB(gsMSigDB)
gobp <- gsMSigDB[["c5.go.bp.v2022-1.Hs.symbols.gmt"]]
gobp_gs <- gobp[["geneSet"]]
head(gobp_gs)

```
