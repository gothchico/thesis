#!/bin/bash

# This script normalizes the punctuations and strips the extra spaces in the input text
# Directly sourced from https://github.com/pluiez/NLLB-inference


set -euo pipefail

root=$(dirname $0)

lang_map_path=$root/utils.map_token_lang.tsv

usage () {
    echo "usage: $0 lang" >&2
    exit 1
}
# usage
[ $# -eq 1 ] || usage

lang=$1

# declare -a lang_map

# while read line; do
#     key=$(cut -f 1 <<< "$line")
#     val=$(cut -f 2 <<< "$line")
#     echo "key : $key" >&2
#     echo "value : $val" >&2
#     lang_map[$key]=$val
# done < $lang_map_path


# echo "lang_map : ${lang_map[$lang]}]" >&2

# if [ -v "lang_map[$lang]" ]; then
#     lang=${lang_map[$lang]}
# elif [ -v "lang_map[${lang:0:3}]" ]; then
#     lang=${lang_map[${lang:0:3}]}
# else
#     echo "undefined mapping: ${lang}, falling back to: en" >&2
#     lang=en
# fi
# echo "lang : $lang" >&2

perl $root/normalize-punctuation.perl $lang
