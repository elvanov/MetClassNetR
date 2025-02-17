% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MultiLayerFunctions.R
\name{loadInputData}
\alias{loadInputData}
\title{Load the input data}
\usage{
loadInputData(
  peakListF,
  intCol = 23,
  transF,
  spectraF,
  gsmnF,
  spectraSS = NULL,
  resPath,
  met2NetDir,
  configF,
  idenMetF,
  compF
)
}
\arguments{
\item{peakListF}{\code{Path}, path to the TSV file that contains the peak list (one peak per row)
in a MetaboLights-like format. The first row is the header (i.e., the list
of columns' names). The file should contain at least 3 columns:
"database_identifier" (ChEBI), "mass_to_charge", and "retention_time". It is
to note that these column names are fixed. The TSV file can also contain
intensity (or abundance) values. In this case, the column names are free
(e.g., can be named after the samples), but no blank spaces are allowed and
the first character must be a letter. In addition, all the abundances must
be placed at the end of the table, i.e., in the last columns}

\item{intCol}{\code{numeric}, number of the first column containing the intensities or of the
subset of columns to take the intensity values from. The default value is
23, as in all datasets available in MetaboLights
(https://www.ebi.ac.uk/metabolights)}

\item{transF}{\code{path}, (optional) path to the CSV file containing the transformation list.
It must contain at  least the columns: "name", "formula", and "mass". This
file is needed if the mass difference network is to be built}

\item{spectraF}{\code{path}, (optional) path to the MSMS data in MGF format, if available}

\item{gsmnF}{\code{path}, path to the compound graph in GML format, as generated by Met4J
(https://forgemia.inra.fr/metexplore/met4j). The compound graphs of some
organisms are available in the data folder}

\item{spectraSS}{\code{numeric}, (optional) samples the spectra dataset, according to the given
sample size. This would speed up the process and it is useful when testing
your data and/or this package}

\item{resPath}{\code{path}, path to the folder where the results will be stored}

\item{met2NetDir}{\code{path}, path to the directory where the Python package Metabolomics2Network
is stored}

\item{configF}{\code{path}, path to the file that contains the column names (i.e., alias) of the
idenMetF file and the information they contain, such as name, chebi,
formula, etc. See an example in
extdata/MTBLS1586/Metabolomics2NetworksData/JsonConf.txt.
NOTE. This information will be used to do the metabolite mapping to the GSMN
(using metabolomics2Network)}

\item{idenMetF}{\code{path}, path to the TSV file that contains the list of experimental features
that were identified and that have a CHEBI id associated. The header of this
file must match the aliases from the configuration file (configF)}

\item{compF}{\code{path}, path to the TSV file containing the list of compounds in the GSMN of
the organism of interest. They must contain at least two columns: ID and
Chebi. An example can be found in
extdata/MTBLS1586/Metabolomics2NetworksData/WormJamMet.tsv}
}
\value{
Named list containing all the data (peakList, spectra, transformations, and
gsmn)
}
\description{
The function \code{loadInputData} loads the input data, i.e., the files needed
to build the networks
}
\examples{
# See the MultiLayerNetwork vignette

}
\author{
Elva Novoa, \email{elva-maria.novoa-del-toro@inrae.fr}
}
