#!/bin/sh

ROOT="~/.reports"
if [ $# = 0 ]; then
    cat << EOS

ヘルプペ〜ジ🐌
pandoc system v0.9 by umemiya

$ pandoc.sh \$input_file.md \$output_file.pdf

EOS
    exit 1
fi

if [ $# -eq 1 ]; then
    OUTPUT="output.pdf"
elif [ $# -eq 2 ]; then
    OUTPUT="$2"
fi

echo "{$1}をpdf化します"
JA_QUERY="-V documentclass=ltjarticle --latex-engine=lualatex"
pandoc $1 -o $OUTPUT JA_QUERY

exit 0
