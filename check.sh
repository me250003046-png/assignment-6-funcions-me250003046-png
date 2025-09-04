#!/bin/bash

declare -i passed=0
declare -i failed=0

# Helper function to run a test case
run_test() {
    local exe=$1
    local input="$2"
    local expected="$3"

    # Use printf to convert \n to newlines
    output=$(printf "$input" | ./"$exe")
    if [ "$output" == "$expected" ]; then
        echo "PASS $exe input:$input output:$output"
        ((passed++))
    else
        echo "FAIL $exe input:$input expected:$expected got:$output"
        ((failed++))
    fi
}


# Compile all
g++ -o sum_array sum_array.cpp
g++ -o second_largest second_largest.cpp
g++ -o product_except_index product_except_index.cpp
g++ -o prime_palindrome prime_palindrome.cpp
g++ -o gcd gcd.cpp

if [ $? -ne 0 ]; then
    echo "Compilation failed"
    exit 1
fi

# sum_array tests
run_test sum_array "5\n1 2 3 4 5" "15"
run_test sum_array "3\n10 20 30" "60"
run_test sum_array "4\n-1 -2 -3 -4" "-10"

# second_largest tests
run_test second_largest "6\n12 35 1 10 34 1" "34"
run_test second_largest "3\n1 1 1" "-1"
run_test second_largest "5\n5 4 3 2 1" "4"
run_test second_largest "1\n100" "-1"

# product_except_index tests
run_test product_except_index "4\n1 2 3 4" "24 12 8 6 "
run_test product_except_index "3\n2 0 4" "0 8 0 "
run_test product_except_index "5\n1 1 1 1 1" "1 1 1 1 1 "

# prime_palindrome tests
run_test prime_palindrome "131" "1"
run_test prime_palindrome "1331" "0"
run_test prime_palindrome "17" "0"
run_test prime_palindrome "2" "1"
run_test prime_palindrome "1" "0"

# Run gcd tests
run_test gcd "12 18\n" "6"
run_test gcd "100 25\n" "25"
run_test gcd "7 13\n" "1"
run_test gcd "0 5\n" "5"
run_test gcd "27 9\n" "9"

echo ""
echo "Total Passed: $passed"
echo "Total Failed: $failed"

