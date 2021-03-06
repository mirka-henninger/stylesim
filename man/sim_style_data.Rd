% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fun_simulate-data.R
\name{sim_style_data}
\alias{sim_style_data}
\title{Simulate Data From a Multidimensional Rasch Model}
\usage{
sim_style_data(n = 200, items = 10, categ = 5, ndimc = 1,
  style = NULL, irtmodel = "RSM", reversed = 1/3, var.s, mu.s = 0,
  cor.cc, pop.thres = FALSE, my.theta, my.thres, emp = TRUE, sig = NULL)
}
\arguments{
\item{n}{Numeric. Desired number of observations/persons.}

\item{items}{Numeric. Desired number of items/stimuli. If \code{ndimc} > 1, this
specifies the number of items per dimension.}

\item{categ}{Numeric. Desired number of categories per item.}

\item{ndimc}{Numeric. Desired number of content-related latent variables (irrespective
of number of style-related latent variables).}

\item{style}{Parameter to specify which response style(s) influence the data,
can be either numeric or character. Users may choose one or more among
\code{"ERS1"} (e.g., 1 / 0 / 0 / 0 / 1), \code{"ERS2"} (e.g., 2 / 1 /
0 / 1 / 2), \code{"ARS"} (e.g., 0 / 0 / 0 / 1 / 1), \code{"ADRS"}
(e.g, -1 / -1 / 0 / 1 / 1), and \code{"MRS"} (e.g., 0 / 0 / 1 / 0 /
0). Alternatively, a user-specified vector of weights can be employed. Can
also be \code{NULL} indicating complete abscence of response styles.}

\item{irtmodel}{A character string indicating which model to use. Currently
available is \code{"RSM"} (i.e., rating scale model).}

\item{reversed}{Numeric. Indicates the number of reverse-coded items. Can be either a
ratio between 0 and 1 indicating the ratio of reverse-coded items or an
integer between 0 and \code{items}) indicating the number of reverse-coded
items.}

\item{var.s}{Numeric. The variance(s) of the response style distribution.}

\item{mu.s}{Numeric. The mean(s) of the response style distribution.}

\item{cor.cc}{An optional vector indicating the correlation between the
content-related variables (if \code{ndimc} > 1). If \code{ndimc} > 2,
\code{cor.cc} is recycled if it is not of length \code{ndimc*(ndimc-1)/2}.}

\item{pop.thres}{Logical. If \code{TRUE}, the thresholds of the RSM are set
to their expected value.}

\item{my.theta}{Optional argument to employ a pre-specified vector of person parameters theta}

\item{my.thres}{Optional argument to employ a pre-specified vector of item parameters.}

\item{emp}{Logical. If true, \code{mu.s} and \code{var.s}/\code{sig} specify the empirical not population mean and covariance matrix.}

\item{sig}{Numeric matrix. The variance-covariance matrix of the multivariate
distribution of thetas. If non-NULL, this overrides \code{var.s}.}
}
\value{
Returns a list containing the data and basically a summary of the input specifications:
  \item{dat}{An array containing the data/responses of format \code{n} x
  \code{items} x \code{ndimc}}

  \item{theta}{A matrix containing the true person parameters of format
  \code{n} x \code{(ndimc + length(style))}. For example, if \code{ndimc = 1},
  and \code{style = c("ERS1", "ARS")}, then the second column corresponds to
  "ERS1" and the third column to "ARS".}

  \item{item.par}{A vector of item parameters}

  \item{n}{\code{n}}

  \item{items.per.dim}{Number of items per dimension}

  \item{rev.coded.items}{Number of reverse-coded items per dimension}

  \item{categories}{\code{categ}}

  \item{irtmodel}{\code{irtmodel}}

  \item{dims.content}{\code{ndimc}}

  \item{var.style}{Variance of the style-related latent variable(s).}

  \item{c.c.cor}{Correlation of the content-related latent variables.}

  \item{response.style}{
    \code{style} -- The specified response style(s)

    \code{coding} -- The implied coding scheme

    \code{mu} -- \code{mu.s}

    \code{sig} -- The employed variance-covariance matrix}
}
\description{
This function allows to simulate data from a multidimensional Rasch model, in
which one (or more) latent variables represent response styles such as
extreme response style or acquiescence.
}
\references{
Adams, R. J., Wilson, M., & Wang, W.-C. (1997). The multidimensional random coefficients multinomial logit model. \emph{Applied Psychological Measurement, 21}, 1-23. \href{http://dx.doi.org/10.1177/0146621697211001}{doi:10.1177/0146621697211001}

Plieninger, H. (in press). Mountain or molehill: A simulation study on the impact of reponse styles. \emph{Educational and Psychological Measurement}.

Wetzel, E. & Carstensen, C. H. (2015). Multidimensional modeling of traits and response styles. \emph{European Journal of Psychological Assessment}. Advance online publication. \href{http://dx.doi.org/10.1027/1015-5759/a000291}{doi:10.1027/1015-5759/a000291}
}

