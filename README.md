
<!-- README.md is generated from README.Rmd. Please edit that file -->

# assignmentB2JociePickhardt

<!-- badges: start -->

<!-- badges: end -->

The goal of assignmentB2JociePickhardt is to allow users to input four
numeric parameters used in daily life and convert their units from
imperial to metric, simulating moving from the US to Canada.

## Installation

You can install the development version of assignmentB2JociePickhardt
from [GitHub](https://github.com/) with:

``` r
devtools::install_github("jociepick/assignmentB2JociePickhardt")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(assignmentB2JociePickhardt)

moving_to_canada(5, 62, 15, 35)
#> # A tibble: 4 × 5
#>   variable    input in_unit output out_unit
#>   <chr>       <dbl> <chr>    <dbl> <chr>   
#> 1 Distance        5 mi        8.04 km      
#> 2 Temperature    62 F        16.7  C       
#> 3 Volume         15 oz      444.   mL      
#> 4 Weight         35 lbs      15.9  kg
```
