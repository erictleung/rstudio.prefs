% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_rstudio_secondary_repo.R
\name{use_rstudio_secondary_repo}
\alias{use_rstudio_secondary_repo}
\title{Set RStudio Secondary Repository}
\usage{
use_rstudio_secondary_repo(..., .write_json = TRUE, .backup = TRUE)
}
\arguments{
\item{...}{series of named secondary repositories, e.g.
\code{ropensci = "https://ropensci.r-universe.dev"}}

\item{.write_json}{logical indicating whether to update and overwrite
the existing JSON file of options. Default is \code{TRUE}. When \code{FALSE},
the function will return a list of all options, instead of writing
them to file.}

\item{.backup}{logical indicating whether to create a back-up of preferences
file before it's updated. Default is \code{TRUE}}
}
\value{
NULL, updates RStudio \code{rstudio-prefs.json} file
}
\description{
This function updates the RStudio preferences saved in
the \code{rstudio-prefs.json} file to include the secondary repositories
passed my the user. If a new name for an existing repository is
passed by the user, the name will be updated in the JSON file.
}
\details{
A note for users outside of the USA.
If the country in \code{.$cran_mirror$country} has not been previously recorded
in the JSON preferences file (typically, auto set by RStudio),
the \code{use_rstudio_secondary_repo()} function will set \code{"country" = "us"}.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
use_rstudio_secondary_repo(
  ropensci = "https://ropensci.r-universe.dev",
  ddsjoberg = "https://ddsjoberg.r-universe.dev"
)
\dontshow{\}) # examplesIf}
}
\author{
Daniel D. Sjoberg
}
