\name{users}
\alias{users}
\title{Get openSNP users.}
\usage{
users(df = FALSE)
}
\arguments{
  \item{df}{Return data.frame (TRUE) or not (FALSE) -
  default = FALSE.}
}
\value{
List of openSNP users, their ID numbers, and XX if
available.
}
\description{
Get openSNP users.
}
\examples{
\dontrun{
# just the list
data <- users(df=FALSE)
data

# get a data.frame of the users data
data <- users(df=TRUE)
data[[1]] # users with links to genome data
data[[2]] # users without links to genome data
}
}

