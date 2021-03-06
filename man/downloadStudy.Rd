% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/downloadStudy.R
\name{downloadStudy}
\alias{downloadStudy}
\title{Download and cache study dataset}
\usage{
downloadStudy(cancer_study_id, use_cache = TRUE, force = FALSE)
}
\arguments{
\item{cancer_study_id}{The cBioPortal study identifier as in
\url{https://cbioportal.org/webAPI}}

\item{use_cache}{logical (default TRUE) create the default cache location
and use it to track downloaded data. If data found in the cache, data will
not be re-downloaded. A path can also be provided to data cache location.}

\item{force}{logical (default FALSE) whether to force re-download data from
remote location}
}
\value{
The file location of the data tarball
}
\description{
Provide a `cancer_study_id` from the `studiesTable` and retrieve
the study tarball from cBioPortal
}
\keyword{internal}
