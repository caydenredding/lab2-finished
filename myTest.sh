#!/bin/bash

all_counter=0
pass_counter=0

echo -n "Testing no arguments - "
./studentData > tmp
((all_counter++))
if grep -q "Usage: studentData <filename>" tmp;
then
    echo "PASS"
    ((pass_counter++))
else
    echo "FAIL"
fi

echo -n "Testing 2 arguments - "
./studentData x x > tmp
((all_counter++))
if grep -q "Usage: studentData <filename>" tmp;
then
    echo "PASS"
    ((pass_counter++))
else
    echo "FAIL"
fi

echo -n "Testing complete data check - "
timeout 0.2s ./studentData data/bad_data_missing.csv > tmp
((all_counter++))
if grep -q "Error: CSV file does not have expected format" tmp;
then
    echo "PASS"
    ((pass_counter++))
else
    echo "FAIL"
fi

echo "Passed $pass_counter / $all_counter tests"