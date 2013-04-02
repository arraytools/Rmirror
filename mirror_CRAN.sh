#! /bin/bash
# mirror2.sh
# This is part 2 of 2 R scripts for mirroring Windows' part of CRAN and Bioconductor
# MCL 3/26/2013
# CRAN packages
rsync -rtlzv --delete cran.r-project.org::CRAN/bin/windows/contrib/2.15/ ~/Rmirror/CRAN/bin/windows/contrib/2.15
rsync -rtlzv --delete cran.r-project.org::CRAN/src/contrib/PACKAGES ~/Rmirror/CRAN/src/contrib/
rsync -rtlzv --delete cran.r-project.org::CRAN/src/contrib/PACKAGES.gz ~/Rmirror/CRAN/src/contrib/
wget -N http://www.bioconductor.org/biocLite.R -P ~/Rmirror/Bioc
# Optionally the source directory for the current version and 2.15.3 recommended packages
rsync -rtlzv --delete cran.r-project.org::CRAN/src/contrib/*.tar.gz ~/Rmirror/CRAN/src/contrib/
rsync -rtlzv --delete cran.r-project.org::CRAN/src/contrib/2.15.3 ~/Rmirror/CRAN/src/contrib/

