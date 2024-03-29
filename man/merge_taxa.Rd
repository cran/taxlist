% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/merge_taxa.R
\name{merge_taxa}
\alias{merge_taxa}
\alias{merge_taxa.taxlist}
\alias{merge_taxa,taxlist-method}
\title{Merge concepts or move names}
\usage{
merge_taxa(object, ...)

\method{merge_taxa}{taxlist}(object, concepts, level, print_output = FALSE, ...)
}
\arguments{
\item{object, taxlist}{Object of class \linkS4class{taxlist}.}

\item{...}{Further arguments to be passed to or from other methods.}

\item{concepts}{Numeric (integer) vector including taxon concepts to be
merged.}

\item{level}{Character vector indicating the lowest level for merging.}

\item{print_output}{Logical value indicating whether the merged concept
should be displayed in the console.}
}
\value{
An object of class \linkS4class{taxlist}.
}
\description{
Merge taxon concepts form a \linkS4class{taxlist} object into single ones.
}
\details{
Taxon concepts indicated in argument \code{concepts} will be merged into a
single concept.
The new concept inherits the ID and respective attributes from slots
\code{taxonRelations} and \code{taxonTraits} from the first taxon concept
indicated in argument \code{concepts}.

For convenience the resulting concept can be displayed by setting
\code{print_output=TRUE} but only when using argument \code{concepts}.

An alternative application of this function is implemented through the
argument \code{level}, where all lower rank taxa will be merged to the indicated
level or higher (if parent of merged taxa are at a higher rank).
}
\examples{
## Merge Cyperus papyrus and Cyperus dives
summary(Easplist, c(206, 197))

sp_list <- merge_taxa(object = Easplist, concepts = c(206, 197),
    print_output = TRUE)
}
\author{
Miguel Alvarez \email{kamapu78@gmail.com}
}
