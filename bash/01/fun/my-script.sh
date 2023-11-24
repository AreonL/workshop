#!/usr/bin/bash
echo "Something Fun"


source ../utils/colors

MY_FLAG="$1"
echo "$MY_FLAG"

NUMBER1=10
NUMBER2="10"

echo "$NUMBER1"

ARRAY_VARIABLE=("This" "is" "a" "array")

for ITEM in "${ARRAY_VARIABLE[@]}"; do
    echo "$ITEM"
done

# Checks current directory
ls -la

# Creates the file
touch my-second-script.sh

# Make a directory
mkdir -p fun-again

# Remove file, no need to duplicate
rm --force fun-again/my-second-script.sh

# Move second script to fun-again
mv my-second-script.sh fun-again

# Read a file
# ls -la ../utils
echo "Lines in file"
cat ../utils/practice-text.txt | wc -l
echo "Words in file"
cat ../utils/practice-text.txt | wc -w
echo "Characters in file"
cat ../utils/practice-text.txt | wc -m

read -p "Type something: " something

echo "$something"

# If statement
if [ "$something" == "sudo" ]; then
    echo "Is equal"
else
    echo "Not equal"
fi

# Function
function fun() {
    echo "This is my argument: $1 $2"
    echo "$@"
    echo "$#"
}

fun "$something" "$ITEM"
