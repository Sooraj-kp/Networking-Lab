echo "Enter First number: "
read num1
echo "Enter second number: "
read num2

echo "enter opeartions: +,-,*,/: "
read operation

case $operation in
        +)
                result=$((num1 + num2))
                echo "result:  $num1 + $num2 = $result";;
        -)
                result=$((num1 - num2))
                echo "result:  $num1 - $num2 = $result";;
        \*)
                result=$((num1 * num2))
                echo "result:  $num1 * $num2 = $result";;
        /)
                result=$((num1 / num2))
                echo "result:  $num1 / $num2 = $result";;
        *)
                echo "invalid operation .....";;
esac
