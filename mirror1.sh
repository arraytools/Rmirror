#! /bin/bash
# mirro1.sh
# This is part 1 of 2 R scripts for mirroring Windows' part of CRAN and Bioconductor
# MCL 3/26/2013
mkdir -p ~/Rmirror/CRAN/bin/windows/contrib/2.15
mkdir -p ~/Rmirror/CRAN/src/contrib
mkdir -p ~/Rmirror/Bioc
mkdir -p ~/Rmirror/Bioc/packages/2.11/bioc/bin/windows
mkdir -p ~/Rmirror/Bioc/packages/2.11/bioc/src
# Optionally html, vignettes, news, licenses, readmes
mkdir -p ~/Rmirror/Bioc/packages/2.11/bioc/html
mkdir -p ~/Rmirror/Bioc/packages/2.11/bioc/vignettes
mkdir -p ~/Rmirror/Bioc/packages/2.11/bioc/news
mkdir -p ~/Rmirror/Bioc/packages/2.11/bioc/licenses
mkdir -p ~/Rmirror/Bioc/packages/2.11/bioc/readmes
# End of optional
mkdir -p ~/Rmirror/Bioc/packages/2.11/data/annotation/bin/windows
mkdir -p ~/Rmirror/Bioc/packages/2.11/data/annotation/src/contrib
mkdir -p ~/Rmirror/Bioc/packages/2.11/data/experiment/bin/windows/contrib/2.15
mkdir -p ~/Rmirror/Bioc/packages/2.11/data/experiment/src/contrib
mkdir -p ~/Rmirror/Bioc/packages/2.11/extra/bin/windows/contrib/2.15
mkdir -p ~/Rmirror/Bioc/packages/2.11/extra/src/contrib
