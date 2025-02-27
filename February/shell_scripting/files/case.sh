
#!/bin/bash
echo "Enter your option 1:ADD, 2:SUB, 3:MUL"
read i
case $i in
	1)echo $(($1+$2));;
	2)echo $(($1-$2));;
	3)echo $(($1*$2));;
esac
