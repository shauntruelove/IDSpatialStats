% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transdistfuncs.r
\name{est.transdist}
\alias{est.transdist}
\title{Estimate transmission distance}
\usage{
est.transdist(epi.data, gen.t.mean, gen.t.sd, t1, max.sep, max.dist,
  n.transtree.reps = 100, theta.weights = NULL, silent = FALSE)
}
\arguments{
\item{epi.data}{a three-column matrix giving the coordinates (\code{x} and \code{y}) and time of infection (\code{t} for all cases in an epidemic (columns must be in \code{x}, \code{y}, \code{t} order)}

\item{gen.t.mean}{mean generation time of the infecting pathogen}

\item{gen.t.sd}{standard deviation of generation time of the infecting pathogen}

\item{t1}{time step to begin estimation of transmission distance}

\item{max.sep}{maximum number of time steps allowed between two cases (passed to the \code{get.transdist.theta} function)}

\item{max.dist}{maximum spatial distance between two cases considered in calculation}

\item{n.transtree.reps}{number of time to simulate transmission trees when estimating the weights of theta (passed to the \code{est.transdist.theta.weights} function, default = 10). Warning: higher values of this parameter cause significant increases in computation time.}

\item{theta.weights}{use external matrix of theta weights. If NULL (default) the matrix of theta weights is automatically estimated by calling the \code{est.transdist.theta.weights} function}

\item{silent}{silence progress messages (default = F)}
}
\value{
a list containing the estimated mean distance of the transmission kernel (\code{mu.est}) and its standard deviation (\code{sigma.est}). Bounded estimates (\code{bound.mu.est} and \code{bound.sigma.est}) are also given for when the assumption of equal mean and standard deviation is violated.
}
\description{
this function estimates the mean transmission distance of an epidemic when given the locations and times of symptomatic cases and the mean and standard deviation of the generation time of the infecting pathogen
}
\references{
Salje H, Cummings DAT and Lessler J (2016). “Estimating infectious disease transmission distances using the overall distribution of cases.” Epidemics, 17, pp. 10–18. ISSN 1755-4365, doi: \href{https://www.sciencedirect.com/science/article/pii/S1755436516300317}{10.1016/j.epidem.2016.10.001}.
}
\seealso{
Other est.wt: \code{\link{est.wt.matrix.weights}},
  \code{\link{est.wt.matrix}}

Other transdist: \code{\link{est.transdist.bootstrap.ci}},
  \code{\link{est.transdist.temporal.bootstrap.ci}},
  \code{\link{est.transdist.temporal}},
  \code{\link{est.transdist.theta.weights}},
  \code{\link{get.transdist.theta}}
}
\author{
Justin Lessler, Henrik Salje, and John Giles
}
\concept{est.wt}
\concept{transdist}
