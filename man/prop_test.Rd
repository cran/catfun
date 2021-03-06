% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prop_test.R
\name{prop_test}
\alias{prop_test}
\title{Tests for equality of proportions}
\usage{
prop_test(x, ...)
}
\arguments{
\item{x}{a vector of counts, a one-dimensional table with two entries, or a two-dimensional table with 2 columns. Used to select method.}

\item{...}{further arguments passed to or from other methods.}
}
\value{
a list with class "prop_test" containing the following components:

\item{x}{number of successes}
\item{n}{number of trials}
\item{p}{null proportion}
\item{statistic}{the value of Pearson's chi-squared test statistic}
\item{p_value}{p-value corresponding to chi-squared test statistic}
\item{df}{degrees of freedom}
\item{method}{the method used to calculate the confidence interval}
\item{method_ci}{confidence interval calculated using specified method}
\item{exact_ci}{exact confidence interval}
\item{exact_p}{p-value from exact test}
}
\description{
Conduct 1-sample tests of proportions and tests for equality of k proportions.
}
\details{
Calculations are done using the methods described in `stats::binom.test()` and `stats::prop.test()`
}
\examples{
prop_test(7, 50, method = "wald", p = 0.2)
prop_test(7, 50, method = "wald", p = 0.2, exact = TRUE)
prop_test(c(23, 24), c(50, 55))

vietnam <- data.frame(
   service = c(rep("yes", 2), rep("no", 2)),
   sleep = c(rep(c("yes", "no"), 2)),
   count = c(173, 160, 599, 851)
)

sleep <- xtabs(count ~ service + sleep, data = vietnam)
prop_test(sleep)

prop_test(vietnam, service, sleep, count)

}
\seealso{
[stats::binom.test()], [stats::prop.test()]
}
