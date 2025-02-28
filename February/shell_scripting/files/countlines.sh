echo "enter the file name: "

read filename

if [ -f "$filename" ]; then
        line_count=$(wc -l < "$filename")
        echo "line count : $line_count"
else
        echo "file does not exist"
fi
