Rmirror
=======

The repository contains an instruction to create an R mirror for Windows's contribute packages (only). 

## Files

* `mirror1.sh` was used to create necessary directories.
* `mirror2.sh` was used to rsync files from CRAN and Bioconductor. For convenience, this file is splitted into
  `mirror_CRAN.sh` and `mirror_Bioc.sh`.
* `setup.sh` contains a shell script to create soft link in apache server.
* `test.r` was used to test the new R repository.

## Installation

```bash
git clone https://github.com/arraytools/Rmirror.git
```

## Usage

```bash
cd Rmirror
chmod +x setup.sh
chmod +x mirror1.sh
chmod +x mirror2.sh
```
Then manually open ~/Rmirror/Bioc/biocLite.R, modify and uncomment two lines so packages need to be updated 
coming from the mirror.
```R
options("repos" = c(CRAN="http://SERVERNAME/CRAN"))
options("BioC_mirror" = "http://SERVERNAME/Bioc")
```

## Note

* As of R 2.15.x and Bioc 2.11, the mirror for Windows part takes about 31GB.
* If there is a connection problem, check folder attributes
```bash
chmod -R 755 ~/Rmirror/CRAN/bin
```
* If we have a mirror on local network, we can take an advantage of it. For example,
```bash
rsync -zrtlv --delete USERNAME@ANOTHERIP:Rmirror/Bioc/packages/2.11/data/ ~/Rmirror/Bioc/packages/2.11/data
```