## ----setup, include = FALSE---------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----wind-1-------------------------------------------------------------------
library(ridgetorus)
data("wind")
plot(wind, xlim = c(-pi, pi), ylim = c(-pi, pi), axes = FALSE,
     xlab = expression(theta[1]), ylab = expression(theta[2]))
sdetorus::torusAxis()

## ----wind-2-------------------------------------------------------------------
# Fit TR-PCA
fit <- ridge_pca(x = wind)
show_ridge_pca(fit)

# Variance explained
fit$var_exp

## -----------------------------------------------------------------------------
plot(fit$scores, xlim = c(-pi, pi), ylim = c(-pi, pi), pch = 16, axes = FALSE,
     xlab = "Scores 1", ylab = "Scores 2")
sdetorus::torusAxis()

## ----earthquakes-1------------------------------------------------------------
data("earthquakes")
earthquakes <- sdetorus::toPiInt(earthquakes)
plot(earthquakes, xlim = c(-pi, pi), ylim = c(-pi, pi),
     xlab = expression(theta[1]), ylab = expression(theta[2]), axes = FALSE)
sdetorus::torusAxis()

## ----earthquakes-2------------------------------------------------------------
fit_earthquakes <- ridge_pca(x = earthquakes)
fit_earthquakes$var_exp
show_ridge_pca(fit_earthquakes)
plot(fit_earthquakes$scores, pch = 16, xlim = c(-pi, pi), axes = FALSE,
     ylim = c(-pi, pi), xlab = "Scores 1", ylab = "Scores 2")
sdetorus::torusAxis()

