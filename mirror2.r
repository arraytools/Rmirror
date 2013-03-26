# mirror2.R
# This is part 2 of 2 R scripts for mirroring Windows' part of CRAN and Bioconductor
# MCL 3/26/2013
# CRAN packages
rsync -rtlzv --delete cran.r-project.org::CRAN/bin/windows/contrib/2.15/ ~/Rmirror/CRAN/bin/windows/contrib/2.15
rsync -rtlzv --delete cran.r-project.org::CRAN/src/contrib/PACKAGES ~/Rmirror/CRAN/src/contrib/
rsync -rtlzv --delete cran.r-project.org::CRAN/src/contrib/PACKAGES.gz ~/Rmirror/CRAN/src/contrib/
wget -N http://www.bioconductor.org/biocLite.R -P ~/Rmirror/Bioc

# Bioconductor Software (aka bioc) directory
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/bin/windows/ ~/Rmirror/Bioc/packages/2.11/bioc/bin/windows
# Either rsync whole src directory or just essential files
# rsync -zrtlv  --delete bioconductor.org::2.11/bioc/src/ ~/Rmirror/Bioc/packages/2.11/bioc/src
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/src/contrib/PACKAGES ~/Rmirror/Bioc/packages/2.11/bioc/src/contrib/
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/src/contrib/PACKAGES.gz ~/Rmirror/Bioc/packages/2.11/bioc/src/contrib/

# Annotation (aka data/annotation) directory
rsync -zrtlv --delete bioconductor.org::2.11/data/annotation/bin/windows/ ~/Rmirror/Bioc/packages/2.11/data/annotation/bin/windows
rsync -zrtlv --delete bioconductor.org::2.11/data/annotation/src/contrib/PACKAGES ~/Rmirror/Bioc/packages/2.11/data/annotation/src/contrib/
rsync -zrtlv --delete bioconductor.org::2.11/data/annotation/src/contrib/PACKAGES.gz ~/Rmirror/Bioc/packages/2.11/data/annotation/src/contrib/

# Experiment (aka data/experiment) directory
# Note that we are cheating by only downloading PACKAGES and PACKAGES.gz files
rsync -zrtlv --delete bioconductor.org::2.11/data/experiment/bin/windows/contrib/2.15/PACKAGES ~/Rmirror/Bioc/packages/2.11/data/experiment/bin/windows/contrib/2.15/
rsync -zrtlv --delete bioconductor.org::2.11/data/experiment/bin/windows/contrib/2.15/PACKAGES.gz ~/Rmirror/Bioc/packages/2.11/data/experiment/bin/windows/contrib/2.15/
rsync -zrtlv --delete bioconductor.org::2.11/data/experiment/src/contrib/PACKAGES ~/Rmirror/Bioc/packages/2.11/data/experiment/src/contrib/
rsync -zrtlv --delete bioconductor.org::2.11/data/experiment/src/contrib/PACKAGES.gz ~/Rmirror/Bioc/packages/2.11/data/experiment/src/contrib/

# Extra (aka extra) directory
# Note that we are cheating by only downloading PACKAGES and PACKAGES.gz files
rsync -zrtlv --delete bioconductor.org::2.11/extra/bin/windows/contrib/2.15/PACKAGES ~/Rmirror/Bioc/packages/2.11/extra/bin/windows/contrib/2.15/
rsync -zrtlv --delete bioconductor.org::2.11/extra/bin/windows/contrib/2.15/PACKAGES.gz ~/Rmirror/Bioc/packages/2.11/extra/bin/windows/contrib/2.15/
rsync -zrtlv --delete bioconductor.org::2.11/extra/src/contrib/PACKAGES ~/Rmirror/Bioc/packages/2.11/extra/src/contrib/
rsync -zrtlv --delete bioconductor.org::2.11/extra/src/contrib/PACKAGES.gz ~/Rmirror/Bioc/packages/2.11/extra/src/contrib/

