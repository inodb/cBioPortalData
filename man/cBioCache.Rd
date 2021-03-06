% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cache.R
\name{cBioCache}
\alias{cBioCache}
\alias{setCache}
\alias{removeCache}
\title{Manage cache / download directories for study data}
\usage{
cBioCache(...)

setCache(
  directory = rappdirs::user_cache_dir("cBioPortalData"),
  verbose = TRUE,
  ask = interactive()
)

removeCache(cancer_study_id)
}
\arguments{
\item{...}{For \code{cBioCache}, arguments passed to \code{setCache}}

\item{directory}{The file location where the cache is located. Once set
future downloads will go to this folder.}

\item{verbose}{Whether to print descriptive messages}

\item{ask}{logical (default TRUE when interactive session) Confirm the file
location of the cache directory}

\item{cancer_study_id}{A single string from \code{studiesTable} associated
with a study tarball}
}
\value{
cBioCache: The path to the cache location
}
\description{
Managing data downloads is important to save disk space and
re-downloading data files. This can be done effortlessly via the integrated
BiocFileCache system.
}
\section{cBioCache}{

Get the directory location of the cache. It will prompt the user to create
a cache if not already created. A specific directory can be used via
\code{setCache}.
}

\section{setCache}{

Specify the directory location of the data cache. By default, it will
got to the user's home/.cache and "appname" directory as specified by
\link{user_cache_dir}. (default appname: cBioPortalData)
}

\section{removeCache}{

Some files may become corrupt when downloading, this function allows
the user to delete the tarball associated with a \code{cancer_study_id} in the
cache. This only works for the \code{cBioDataPack} function. To remove the entire
\code{cBioPortalData} cache, run \code{unlink("~/.cache/cBioPortalData")}.
}

\examples{

(cacheloc <- cBioCache())

}
