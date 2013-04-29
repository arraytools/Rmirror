#! /bin/bash
# Usage:
#   mirror_CRAN.sh Rversion
# Example:
#   mirror_CRAN.sh 2.15
#   mirror_CRAN.sh 3.0
# 
# This is part 2 of 2 R scripts for mirroring Windows' part of CRAN and Bioconductor
# MCL 4/29/2013
# 
# CRAN packages
rsync -rtlzv --delete cran.r-project.org::CRAN/bin/windows/contrib/$1/ ~/Rmirror/CRAN/bin/windows/contrib/$1
rsync -rtlzv --delete cran.r-project.org::CRAN/src/contrib/PACKAGES ~/Rmirror/CRAN/src/contrib/
rsync -rtlzv --delete cran.r-project.org::CRAN/src/contrib/PACKAGES.gz ~/Rmirror/CRAN/src/contrib/
# Optionally the source directory for all contributed packages
rsync -rtlzv --delete cran.r-project.org::CRAN/src/contrib/*.tar.gz ~/Rmirror/CRAN/src/contrib/
# Optionally the source code for recommended packages from the current R version (up to minor version)
# rsync -rtlzv --delete cran.r-project.org::CRAN/src/contrib/2.15.3 ~/Rmirror/CRAN/src/contrib/


