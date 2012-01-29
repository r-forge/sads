\name{dlr}
\alias{dlr}
\title{Fisher's Logseries Distribution
}
\description{
Density for the Fisher's logseries probability distribution.
}
\usage{
dlr( x, N , alpha)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    Vector of (non-negative integer) quantiles. Usually a vector of
    abundances of species in a sample.
  }
  \item{alpha}{
    Fisher's alpha parameter (see details)
  }
  \item{log}{
    logical; if TRUE, probabilities p are given as log(p)
  }
}

\details{

  The Fisher logseries is a limiting case of the Negative Binomial where
  the dispersion parameter of the negative binomial tends to zero. It
  was originally proposed by Fisher (1943) to relate the expected number
  of species in a sample from a biological community to the sample size as:

  S = alpha * log(1 + N/alpha)

  Where alpha is the single parameter of the logseries distribution,
  often used as a diversity index. From this relation follows that the
  expected number of species with x individuals in the sample is
  
  S(x) = alpha*X^x/x

  Where X is a function of alpha and N, that tends to one as the sample
  size N increases:

  X = N / (alpha+ N)
  
  The density function used here is derived by Alonso et al. (2008,
  supplementary material). In ecology, this density distribution gives
  the probability that a species has
  an abundance of x individuals in a random sample of size N of the
  community. In the community the species abundances are independent
  random variables that follow a logseries distribution. Thus, a random
  sample of a logseries is also a logseries distribution.
  
  Hence, a logseries distribution is a model for species
  abundances distributions (SAD) under the assumptions that (a) species
  abundances in the community are independent identically distributed
  logseries variables, (b) sampling is a Poisson proccess, (c) the
  sampling is with replacement, or the fraction
  sampled is small enough to approximate a sample with replacement.
}

\value{
(log) density of the (zero-truncated) density
}
\references{

  Alonso, D. and Ostling, A., and Etienne, R. S. 2008 The implicit
  assumption of symmetry and the species abundance
  distribution. \emph{Ecology Letters, 11}: 93-105.
  
  Pielou, E.C. 1977. \emph{Mathematical Ecology}. New York: John Wiley
  and Sons.

  Fisher, R.A, Corbert, A.S. and Williams, C.B. (1943) The Relation between the number of species and the number of individuals in a random sample of an animal population. \emph{The Journal of Animal Ecology, 12(1)}: 42--58.

  Green,J. and Plotkin, J.B. 2007 A statistical theory for sampling species abundances. \emph{Ecology Letters 10}:1037--1045
}
\author{
Paulo I. Prado & Cristiano Strieder
}
\note{
z
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
dpois, dnbinom, dpoig, fit.logser
}