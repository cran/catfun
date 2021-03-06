% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prop_test.R
\name{prop_test.table}
\alias{prop_test.table}
\title{Tests for equality of proportions}
\usage{
\method{prop_test}{table}(x, method = c("wald", "wilson",
  "agresti-couli", "jeffreys", "modified wilson", "wilsoncc",
  "modified jeffreys", "clopper-pearson", "arcsine", "logit", "witting",
  "pratt"), alternative = c("two.sided", "less", "greater"),
  conf.level = 0.95, correct = FALSE, exact = FALSE, ...)
}
\arguments{
\item{x}{a 2 x k table.}

\item{method}{a character string indicating method for calculating confidence interval, default is "wald". Options include,
wald, wilson, agresti-couli, jeffreys, modified wilson, wilsoncc modified jeffreys, clopper-pearson, arcsine, logit, witting, and pratt.}

\item{alternative}{character string specifying the alternative hypothesis. Possible options are "two.sided" (default),
"greater", or "less".}

\item{conf.level}{confidence level for confidence interval, default is 0.95.}

\item{correct}{a logical indicating whether Yate's continuity correction should be applied.}

\item{exact}{a logical indicating whether to output exact p-value, ignored if k-sample test.}

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
\examples{
vietnam <- data.frame(
     service = c(rep("yes", 2), rep("no", 2), rep("maybe", 2)),
     sleep = rep(c("yes", "no"), 3),
     count = c(173, 160, 599, 851, 400, 212)
)

xtabs(count ~ service + sleep, data = vietnam) \%>\% prop_test()
}
