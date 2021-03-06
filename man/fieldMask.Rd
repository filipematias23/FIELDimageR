% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_fieldMask.R
\name{fieldMask}
\alias{fieldMask}
\title{Removing background (e.g., soil) using vegetation index.}
\usage{
fieldMask(
  mosaic,
  Red = 1,
  Green = 2,
  Blue = 3,
  RedEdge = NULL,
  NIR = NULL,
  mask = NULL,
  index = "HUE",
  myIndex = NULL,
  cropValue = 0,
  cropAbove = TRUE,
  projection = TRUE,
  DSMmosaic = NULL,
  DSMcropAbove = TRUE,
  DSMcropValue = 0,
  plot = TRUE
)
}
\arguments{
\item{mosaic}{object of class stack with at least 3 bands.}

\item{Red, Green, Blue, RedEdge, NIR}{respective position of the band at the original image file.}

\item{mask}{if avaliable the soil will be removed following this mask and not the vegetation index, cropValue and cropAbove must be used.}

\item{index}{vector with the vegetation indices to be calculated. For the list of indices please visit the FIELDimageR manual at link:}

\item{myIndex}{user can calculate a diferent index using the bands names, e.g. "(Green+Blue)/Red-NIR/RedEdge"}

\item{cropValue}{referent value of soil in the image.}

\item{cropAbove}{if TRUE all values above the cropValue will be accounted to make the mask.}

\item{projection}{if TRUE the projection will not be accounted to the mask.}

\item{DSMmosaic, DSMcropAbove, DSMcropValue}{DSM should be used if the file of height is provided.}

\item{plot}{if is TRUE the original and crop image will be plotted.}
}
\value{
The return value, if any, from executing the function.

A list with elements:
\itemize{
  \item The function returns a image format stack with the original bands (layers) without the background and mask with logical values of 0 and 1 for vegetation or soil.
}
}
\description{
A fct function

Different vegetation indices can be used to remove images background. For the list of indices please visit the FIELDimageR manual at link: https://github.com/OpenDroneMap/FIELDimageR#P6
}
\details{
fieldMask
}
