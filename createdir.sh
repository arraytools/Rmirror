#! /bin/bash
# Usage:
#   ./createdir.sh Rversion Biocversion
# Example use:
#   createdir.sh 2.15 2.11
#   createdir.sh 3.0 2.12
# This is part 1 of 2 R scripts for mirroring Windows' part of CRAN and Bioconductor
# MCL 4/29/2013
mkdir -p ~/Rmirror/CRAN/bin/windows/contrib/$1
mkdir -p ~/Rmirror/CRAN/src/contrib
mkdir -p ~/Rmirror/Bioc
mkdir -p ~/Rmirror/Bioc/packages/$2/bioc/bin/windows
mkdir -p ~/Rmirror/Bioc/packages/$2/bioc/src
# Optionally html, vignettes, news, licenses, readmes
mkdir -p ~/Rmirror/Bioc/packages/$2/bioc/html
mkdir -p ~/Rmirror/Bioc/packages/$2/bioc/vignettes
mkdir -p ~/Rmirror/Bioc/packages/$2/bioc/news
mkdir -p ~/Rmirror/Bioc/packages/$2/bioc/licenses
mkdir -p ~/Rmirror/Bioc/packages/$2/bioc/readmes
# End of optional
mkdir -p ~/Rmirror/Bioc/packages/$2/data/annotation/bin/windows
mkdir -p ~/Rmirror/Bioc/packages/$2/data/annotation/src/contrib
mkdir -p ~/Rmirror/Bioc/packages/$2/data/experiment/bin/windows/contrib/$1
mkdir -p ~/Rmirror/Bioc/packages/$2/data/experiment/src/contrib
mkdir -p ~/Rmirror/Bioc/packages/$2/extra/bin/windows/contrib/$1
mkdir -p ~/Rmirror/Bioc/packages/$2/extra/src/contrib
