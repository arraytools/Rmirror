#! /bin/bash
# mirror2.sh
# This is part 2 of 2 R scripts for mirroring Windows' part of CRAN and Bioconductor
# MCL 3/26/2013
# Bioconductor front page 'BiocViews'
rsync -zrtlv  --delete bioconductor.org::2.11/BiocViews.html ~/Rmirror/Bioc/packages/2.11/
rsync -zrtlv  --delete bioconductor.org::2.11/index.html ~/Rmirror/Bioc/packages/2.11/

# Bioconductor Software (aka bioc) directory
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/bin/windows/ ~/Rmirror/Bioc/packages/2.11/bioc/bin/windows
# Either rsync whole src directory or just essential files
# rsync -zrtlv  --delete bioconductor.org::2.11/bioc/src/ ~/Rmirror/Bioc/packages/2.11/bioc/src
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/src/contrib/PACKAGES ~/Rmirror/Bioc/packages/2.11/bioc/src/contrib/
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/src/contrib/PACKAGES.gz ~/Rmirror/Bioc/packages/2.11/bioc/src/contrib/
# Optionally the html part
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/html/ ~/Rmirror/Bioc/packages/2.11/bioc/html
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/vignettes/ ~/Rmirror/Bioc/packages/2.11/bioc/vignettes
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/news/ ~/Rmirror/Bioc/packages/2.11/bioc/news
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/licenses/ ~/Rmirror/Bioc/packages/2.11/bioc/licenses
rsync -zrtlv  --delete bioconductor.org::2.11/bioc/readmes/ ~/Rmirror/Bioc/packages/2.11/bioc/readmes

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

