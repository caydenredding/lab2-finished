#!/bin/bash


# I break my sections of tests up with a couple of linebreaks and a title

echo -e "\n\n~~ Argument Tests ~~"

# I use an echo to explain the purpose of each test
# the -n means 'print the next thing on the same line'
# which makes it easier to read the output

echo -n "Testing no arguments - "

# I run the executable and pipe the output to a file called 'tmp'
# this lets me check the prints!

./studentData > tmp

# And now I search to make sure the right print came out
# you have met grep before - it lets us search
# -q means 'quiet' which is what lets us do an 'if' on it

if grep -q "Usage: studentData <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


# To test a specific menu function, we need to pass in user inputs
# this is really easy with Bash!

# we need to do two pipes, and the order matters
# first we write the executable and the command line argument
# then we pipe IN (using <) the file containing the user inputs
# and then we pipe OUT (using >) to our tmp file
./studentData data1.csv < inputs/example.txt > tmp


# alternatively because we have a very simple program, we can also do:
echo "1" | ./studentData data1.csv > tmp
# but this is only for when you have 1 input - you still need to write an input file for option 2


# I always tidy up and remove the tmp file at the end.
rm -f tmp