% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pool-methods.R
\docType{class}
\name{Pool-class}
\alias{Pool-class}
\alias{Pool}
\alias{poolCreate}
\alias{poolClose}
\alias{poolClose,Pool-method}
\title{S4 class for compatibility with DBI methods}
\usage{
poolCreate(
  factory,
  minSize = 1,
  maxSize = Inf,
  idleTimeout = 60,
  validationInterval = 600,
  state = NULL
)

poolClose(pool)

\S4method{poolClose}{Pool}(pool)
}
\arguments{
\item{factory}{A factory function responsible for the generation of
the objects that the pool will hold (ex: for DBI database connections,
this function is \code{dbConnect}). It must take no arguments.}

\item{minSize}{An optional number specifying the minimum
number of objects that the pool should have at all times.}

\item{maxSize}{An optional number specifying the maximum
number of objects that the pool may have at any time.}

\item{idleTimeout}{The number of seconds that an idle
object will be kept in the pool before it is destroyed (only
applies if the number of objects is over the \code{minSize}).
Use \code{Inf} if you want created objects never to be destroyed
(there isn't a great reason for this usually).}

\item{validationInterval}{The minimum number of seconds that
\code{pool} will wait before running a validation check on the
next checked out object. By not necessarily validating every
checked out object, there can be substantial performance gains
(especially if the interval between checking out new objects is
very small).}

\item{state}{A \code{pool} public variable to be used by
backend authors as necessary.}

\item{pool}{A Pool object previously created with \code{poolCreate}}
}
\description{
A generic pool class that holds objects. These can be fetched
}
