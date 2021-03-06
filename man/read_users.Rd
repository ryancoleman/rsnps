\name{read_users}
\alias{read_users}
\title{Read in openSNP user files from local storage.}
\usage{
read_users(name = NULL, id = NULL, path = NULL, ...)
}
\arguments{
  \item{name}{User name}

  \item{id}{User id}

  \item{path}{Path to file to read from.}

  \item{...}{Parameters passed on to read.table.}
}
\value{
A data.frame.
}
\description{
Beware, these tables can be large. Check your RAM before
executing. Or possibly read in a subset of the data. This
function reads in the whole kitten kaboodle.
}
\details{
If you specify a name or id, this function reads
environment variables written in the function
download_users, and then searches against those variables
for the path to the file saved. Alternatively, you can
supply the path.
}
\examples{
\donttest{
dat <- read_users(name = "kevinmcc")
head(dat)
dat <- read_users(id = 285)
}
}

