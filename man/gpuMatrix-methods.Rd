% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/gpuMatrix.R
\docType{methods}
\name{gpuMatrix}
\alias{gpuMatrix}
\alias{gpuMatrix,matrix}
\alias{gpuMatrix,matrix-method}
\title{Construct a gpuMatrix}
\usage{
gpuMatrix(data = NA, ncol = NA, nrow = NA, type = NULL, ...)

\S4method{gpuMatrix}{matrix}(data, type = NULL)
}
\arguments{
\item{data}{An object that is or can be converted to a
\code{matrix} object}

\item{ncol}{An integer specifying the number of columns}

\item{nrow}{An integer specifying the number of rows}

\item{type}{A character string specifying the type of gpuMatrix.  Default
is NULL where type is inherited from the source data type.}

\item{...}{Additional method to pass to gpuMatrix methods}
}
\value{
A gpuMatrix object
}
\description{
Construct a gpuMatrix of a class that inherits
from \code{gpuMatrix}
}
\author{
Charles Determan Jr.
}
