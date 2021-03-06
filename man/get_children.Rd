% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_children.R
\name{get_children}
\alias{get_children}
\alias{get_children,taxlist,numeric-method}
\alias{get_children,taxlist,taxlist-method}
\alias{get_parents}
\alias{get_parents,taxlist,numeric-method}
\alias{get_parents,taxlist,taxlist-method}
\title{Retrieve children or parents of taxon concepts}
\usage{
get_children(taxlist, ConceptID, ...)

\S4method{get_children}{taxlist,numeric}(taxlist, ConceptID, ...)

\S4method{get_children}{taxlist,taxlist}(taxlist, ConceptID, ...)

get_parents(taxlist, ConceptID, ...)

\S4method{get_parents}{taxlist,numeric}(taxlist, ConceptID, ...)

\S4method{get_parents}{taxlist,taxlist}(taxlist, ConceptID, ...)
}
\arguments{
\item{taxlist}{A \linkS4class{taxlist} object.}

\item{ConceptID}{Concept IDs for selecting parents or children or a subset of
\code{taxlist}.}

\item{...}{Further arguments passed among methods.}
}
\value{
A \linkS4class{taxlist} object with a subset including
requested concepts with children or parents.
}
\description{
Retrieve all children or all parents of a queried taxon concept.
}
\details{
This function produces subsets of \linkS4class{taxlist} objects
including all children or parents of queried taxon concepts.
Multiple concepts can be queried in these function.
The argument \code{ConceptID} can be a vector of concept IDs or a subset of
the input \code{taxlist} object.
}
\examples{
## Subset with family Ebenaceae and children
Ebenaceae <- subset(Easplist, charmatch("Ebenaceae", TaxonName))
Ebenaceae <- get_children(Easplist, Ebenaceae)

summary(Ebenaceae)
summary(object=Ebenaceae, ConceptID="all", maxsum=100)

## Get parents of Diospyros tricolor
Diostri <- subset(x=Easplist, subset=TaxonConceptID == 52403,
    slot="relations")
Diostri <- get_parents(Easplist, Diostri)

summary(Diostri)
summary(Diostri, "all")

}
\author{
Miguel Alvarez \email{kamapu78@gmail.com}
}
