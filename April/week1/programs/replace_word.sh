#!/bib/bash
if [ $# -ne 3 ]; then
	echo " Usage :$0 <file> <old_word> <new_word>"
	exit 1
fi

file=$1
old_word=$2
new_word=$3

sed -i "s/$old_word/$new_word/g" "$file"

echo "All occurences of '$old_word' have been replaced with '$new_word' in $file."
