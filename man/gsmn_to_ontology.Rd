% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsmn_to_ontology.R
\name{gsmn_to_ontology}
\alias{gsmn_to_ontology}
\title{Ontology classification for a whole network}
\usage{
gsmn_to_ontology(file=NULL, inchikeys=NULL, smiles=NULL, inchis=NULL,
ontology = c("chemont","chebi"), output=NULL, delay=0, conn=NULL)
}
\arguments{
\item{file}{SBTab file of a genome scale metabolic network (GSMN) holding a unique
identifier (column "ID") and an inchikey (column "Identifiers.inchikey"). Only one
of the parameters file, inchikeys, smiles or inchis should be provided.}

\item{inchikeys}{a vector of InChIKeys that will be be classified. Only one of the
parameters file, inchikeys, smiles or inchis should be provided.}

\item{smiles}{a vector of SMILES that will be classified. Only one of the
parameters file, inchikeys, smiles or inchis should be provided.}

\item{inchis}{a vector of InChIs that will be converted. Only one of the
parameters file, inchikeys, smiles or inchis should be provided.}

\item{ontology}{character that defines which ontology is used for the mapping.
Can be one of c("chemont", "chebi")}

\item{output}{optional, a filename for a two column output table}

\item{delay}{numeric time delay between two requests in classyfireR. See details.}
}
\value{
A csv file giving the most detailed classification per compound.
}
\description{
This function will annotate all compounds of the given GSMN
with a class of the chosen ontology.
}
\details{
For a given SMILES or InChIKey the package classyfireR will report the classes
a compound is classified into in ChemOnt. A lot of compounds are already classified.
Still there remain some unclassified compounds that appear in this script as NULL
or empty in the result list. These queries can be filtered and manually requested
for a new classification via the Webservice available at http://classyfire.wishartlab.com/.

When requesting a high number of queries within classyfireR the following error
message appears: "Error in classyfireR::get_classification(ik) : Request rate limit
exceeded!" That refers to a limit of requests per time. To address that set
delay=10 meaning that the script will wait 10 seconds after each request.
The result will take much longer but will finish in the end.
}
\note{

}
\examples{
\dontrun{
file <- system.file("extdata/Example_Coverage/iHY3410_Compound-SBtab.tsv", package = "MetClassNetR")
gsmn_to_ontology(file,"chemont", delay=10)
}

}
\author{
Sarah Scharfenberg
}
