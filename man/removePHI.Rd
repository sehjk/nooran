% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove_phi.R
\name{removePHI}
\alias{removePHI}
\title{removePHI}
\usage{
removePHI(db)
}
\arguments{
\item{db}{a table containing columns with potentially personally-identifiable
information}
}
\value{
table with PHI columns removed
}
\description{
removes from a table columns that may contain personally-idenifiable information
}
\examples{
db <- data.frame(name = c("sehj","nikhil"), phone1 = c(12348,421279), color = c("red","yellow"), age = c(10,15))
removePHI(db)
}
