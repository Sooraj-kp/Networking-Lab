
#!/bin/bash


display_array() {
    arr=("$@")
    echo "Array elements are: "
    for element in "${arr[@]}"
    do
        echo "$element"
    done
}
read -p "Enter the number of elements in the array: " num_elements


array=()

for (( i=0; i<num_elements; i++ ))
do
    read -p "Enter element $((i + 1)): " element
    array+=("$element")
done


display_array "${array[@]}"
