#/bin/bash
#
# Generate distribution of README.md in various formats.
#

set -x

cat README.md\
 > dist/bhl-blr.md

cat README.md\
 | pandoc -s -t html5\
 | tee dist/bhl-blr.html\
 > index.html

cat README.md\
 | pandoc -s -t docx\
 > dist/bhl-blr.docx

cat README.md\
 | pandoc -s -t pdf\
 > dist/bhl-blr.pdf
