\name{fetch_genotypes}
\alias{fetch_genotypes}
\title{Download genotype data for a user from 23andme or other repo.}
\usage{
fetch_genotypes(url, rows = 10, filepath = NULL, ...)
}
\arguments{
  \item{url}{URL for the download. See example below of
  function use.}

  \item{rows}{Number of rows to read in. Useful for getting
  a glimpse of the data. Default is 10 rows.}

  \item{filepath}{If none is given the file is saved to a
  temporary file, which will be lost after your session is
  closed. Save to a file if you want to access it later.}

  \item{...}{Further args passed on to download.file}
}
\value{
Dataset for a single user.
}
\description{
Download genotype data for a user from 23andme or other
repo.
}
\details{
Beware, not setting the rows parameter means that you
download the entire file, which can be large (e.g., 15MB),
and so take a while to download depending on your
connection speed. Therefore, rows is set to 10 by default
to sort of protect the user.
}
\examples{
\dontrun{
# get a data.frame of the users data
data <- users(df=TRUE)
head( data[[1]] ) # users with links to genome data
mydata <- fetch_genotypes(url = data[[1]][1,"genotypes.download_url"],
   file="~/myfile.txt", quiet=TRUE)

# see some data right away
mydata

# Or read in data later separately
read.table("~/myfile.txt", nrows=10)
}
}

