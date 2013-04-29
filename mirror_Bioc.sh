#! /bin/bash
# Usage:
#   mirror_Bioc.sh Rversion Biocversion
# Example:
#   mirror_Bioc.sh 2.15 2.11
#   mirror_Bioc.sh 3.0  2.12
# 
# This is part 2 of 2 R scripts for mirroring Windows' part of CRAN and Bioconductor
# MCL 4/29/2013

# Bioconductor biocLite.R file
wget -N http://www.bioconductor.org/biocLite.R -P ~/Rmirror/Bioc
# Bioconductor front page 'BiocViews'
rsync -zrtlv  --delete bioconductor.org::$2/BiocViews.html ~/Rmirror/Bioc/packages/$2/
rsync -zrtlv  --delete bioconductor.org::$2/index.html ~/Rmirror/Bioc/packages/$2/

# Bioconductor Software (aka bioc) directory
rsync -zrtlv  --delete bioconductor.org::$2/bioc/bin/windows/ ~/Rmirror/Bioc/packages/$2/bioc/bin/windows
# Either rsync whole src directory or just essential files
# rsync -zrtlv  --delete bioconductor.org::$2/bioc/src/ ~/Rmirror/Bioc/packages/$2/bioc/src
rsync -zrtlv  --delete bioconductor.org::$2/bioc/src/contrib/PACKAGES ~/Rmirror/Bioc/packages/$2/bioc/src/contrib/
rsync -zrtlv  --delete bioconductor.org::$2/bioc/src/contrib/PACKAGES.gz ~/Rmirror/Bioc/packages/$2/bioc/src/contrib/
# Optionally the html part
rsync -zrtlv  --delete bioconductor.org::$2/bioc/html/ ~/Rmirror/Bioc/packages/$2/bioc/html
rsync -zrtlv  --delete bioconductor.org::$2/bioc/vignettes/ ~/Rmirror/Bioc/packages/$2/bioc/vignettes
rsync -zrtlv  --delete bioconductor.org::$2/bioc/news/ ~/Rmirror/Bioc/packages/$2/bioc/news
rsync -zrtlv  --delete bioconductor.org::$2/bioc/licenses/ ~/Rmirror/Bioc/packages/$2/bioc/licenses
rsync -zrtlv  --delete bioconductor.org::$2/bioc/readmes/ ~/Rmirror/Bioc/packages/$2/bioc/readmes

# Annotation (aka data/annotation) directory
rsync -zrtlv --delete bioconductor.org::$2/data/annotation/bin/windows/ ~/Rmirror/Bioc/packages/$2/data/annotation/bin/windows
rsync -zrtlv --delete bioconductor.org::$2/data/annotation/src/contrib/PACKAGES ~/Rmirror/Bioc/packages/$2/data/annotation/src/contrib/
rsync -zrtlv --delete bioconductor.org::$2/data/annotation/src/contrib/PACKAGES.gz ~/Rmirror/Bioc/packages/$2/data/annotation/src/contrib/

# Experiment (aka data/experiment) directory
# Note that we are cheating by only downloading PACKAGES and PACKAGES.gz files
rsync -zrtlv --delete bioconductor.org::$2/data/experiment/bin/windows/contrib/$1/PACKAGES ~/Rmirror/Bioc/packages/$2/data/experiment/bin/windows/contrib/$1/
rsync -zrtlv --delete bioconductor.org::$2/data/experiment/bin/windows/contrib/$1/PACKAGES.gz ~/Rmirror/Bioc/packages/$2/data/experiment/bin/windows/contrib/$1/
rsync -zrtlv --delete bioconductor.org::$2/data/experiment/src/contrib/PACKAGES ~/Rmirror/Bioc/packages/$2/data/experiment/src/contrib/
rsync -zrtlv --delete bioconductor.org::$2/data/experiment/src/contrib/PACKAGES.gz ~/Rmirror/Bioc/packages/$2/data/experiment/src/contrib/

# Extra (aka extra) directory
# Note that we are cheating by only downloading PACKAGES and PACKAGES.gz files
rsync -zrtlv --delete bioconductor.org::$2/extra/bin/windows/contrib/$1/PACKAGES ~/Rmirror/Bioc/packages/$2/extra/bin/windows/contrib/$1/
rsync -zrtlv --delete bioconductor.org::$2/extra/bin/windows/contrib/$1/PACKAGES.gz ~/Rmirror/Bioc/packages/$2/extra/bin/windows/contrib/$1/
rsync -zrtlv --delete bioconductor.org::$2/extra/src/contrib/PACKAGES ~/Rmirror/Bioc/packages/$2/extra/src/contrib/
rsync -zrtlv --delete bioconductor.org::$2/extra/src/contrib/PACKAGES.gz ~/Rmirror/Bioc/packages/$2/extra/src/contrib/

