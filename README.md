
# csGeneset

<!-- badges: start -->
<!-- badges: end -->

The gene set or data used for data analysis

## Installation

You can install the development version of csGeneset from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("BioInfoCloud/csGeneset")
```

## MSigDB
Gene set from MSigDB database
``` r
library(csGeneset)
listMSigDB(gsMSigDB)
gobp <- gsMSigDB[["c5.go.bp.v2022-1.Hs.symbols.gmt"]]
gobp_gs <- gobp[["geneSet"]]
head(gobp_gs)

```
## MCPcounter
MCP-counter(Microenvironment Cell Populations-counter)
### How is the data extracted?
``` r
library(csGeneset)
library(MCPcounter)
# Probe annotation.
probesets <- annoMCPcounter[["probesets"]]
# gene annotation
genes <- annoMCPcounter[["genes"]]
?MCPcounter.estimate

```
probesets and genes are equivalent to the following result:

``` r
library(MCPcounter)
library(preprocessCore)
# Probe annotation results.
probesets = read.table(curl('http://raw.githubusercontent.com/ebecht/MCPcounter/master/Signatures/probesets.txt'),
                       sep='\t',stringsAsFactors=FALSE,colClasses='character')


# gene annotation.
genes = read.table(curl('http://raw.githubusercontent.com/ebecht/MCPcounter/master/Signatures/genes.txt'),
                   sep='\t',
                   stringsAsFactors=FALSE,
                   header=TRUE,
                   colClasses='character',
                   check.names=FALSE)

```

### Cite
Becht E, Giraldo N A, Lacroix L, et al. Estimating the population abundance of tissue-infiltrating immune and stromal cell populations using gene expression[J]. Genome biology, 2016, 17(1): 1-20.

## gsGSVA
The `getGmt` function reads data from the `.gmt` file.
``` r
names(gsGSVA)
# Gene sets for GSVA package analysis were extracted.
gsImmCell <- gsGSVA[["ImmCell"]][["geneSet"]]

``` 

## gsEffector
Classification or annotation of some genes for analysis.



