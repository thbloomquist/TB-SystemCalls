#!/bin/sh

rm -rf test1_input_copy.txt filecopy_copy filecopy_copy_2
echo "=================================================================="
echo "TEST #1"
echo "Running filecopy on test1_input.txt"
echo "================================="
./filecopy test1_input.txt test1_output.txt
echo ""
echo "================================="
echo "Checking to see if files differ"
echo "..."
diff -aqs test1_input.txt test1_output.txt || exit 0
echo "=================================================================="
echo ""
echo ""
echo "=================================================================="
echo "TEST #2"
echo "Running filecopy on test2_input.txt"
echo " -- overwriting a long file with a shorter file"
echo "================================="
cp test1_input.txt test2_output.txt
./filecopy test2_input.txt test2_output.txt
echo ""
echo "================================="
echo "Checking to see if files differ"
echo "..."
diff -aqs test2_input.txt test2_output.txt || exit 0
echo "=================================================================="
echo ""
echo ""
echo "=================================================================="
echo "TEST #3"
echo "Running filecopy on filecopy"
echo "================================="
./filecopy filecopy filecopy_copy
echo ""
echo "================================="
echo "Checking to see if files differ"
echo "..."
diff -aqs filecopy filecopy_copy || exit 0
echo "=================================================================="
echo ""
echo ""
echo "=================================================================="
echo "TEST #4"
echo "Running filecopy_copy on filecopy"
echo "================================="
./filecopy_copy filecopy filecopy_copy_2
echo ""
echo "================================="
echo "Checking to see if files differ"
echo "..."
diff -aqs filecopy filecopy_copy_2 || exit 0
echo "=================================================================="
echo ""