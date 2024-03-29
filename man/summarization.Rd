% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/other_methods.R
\docType{methods}
\name{summarization}
\alias{summarization}
\alias{showMolecules}
\alias{showBoundaries}
\alias{nFeatures}
\alias{nTranscripts}
\alias{extent}
\alias{show,MoleculeExperiment-method}
\alias{showMolecules,MoleculeExperiment-method}
\alias{showBoundaries,MoleculeExperiment-method}
\alias{extent,MoleculeExperiment-method}
\alias{nFeatures,MoleculeExperiment-method}
\alias{nTranscripts,MoleculeExperiment-method}
\title{Summarization methods to get insights into a MoleculeExperiment object}
\usage{
\S4method{show}{MoleculeExperiment}(object)

\S4method{showMolecules}{MoleculeExperiment}(object)

\S4method{showBoundaries}{MoleculeExperiment}(object)

\S4method{extent}{MoleculeExperiment}(object, assayName = NULL)

\S4method{nFeatures}{MoleculeExperiment}(object)

\S4method{nTranscripts}{MoleculeExperiment}(object)
}
\arguments{
\item{object}{Name of MoleculeExperiment object of interest.}

\item{assayName}{Character string specifying the name of the assay from
which to view a summary of the contents.}
}
\value{
A MoleculeExperiment object summary.
}
\description{
The following methods are useful to get quick view of the contents in a
MoleculeExperiment object.
For example, showMolecules and showBoundaries summarise the large nested ME
list of lists in the molecules and boundaries slots.
nFeatures and nTranscripts get the numbers of features or transcripts,
respectively.
}
\examples{
# get example data
repoDir <- system.file("extdata", package = "MoleculeExperiment")
repoDir <- paste0(repoDir, "/xenium_V1_FF_Mouse_Brain")
me <- readXenium(repoDir,
    keepCols = "essential",
    addBoundaries = "cell"
)

showMolecules(me)
showBoundaries(me)

nFeatures(me)

nTranscripts(me)
}
