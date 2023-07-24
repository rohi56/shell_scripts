#!/bin/bash

#Script for creating Multiple Folders

#Entering the path where you have to create the folder. Read the path if the path is not valid Script error out to enter the valid path.
echo "Enter the path where you have to create folder:"
read folder_path

# Check if the entered path is valid
if [ ! -d "$folder_path" ]; then
  echo "Error: Invalid path. Please enter a valid path."
  exit 1
fi

echo "Enter the folder name you want to create: "
read folder_name

echo "Enter the starting number for the range: "
read start_num

echo "Enter the ending number for the range: "
read end_num

# Check if the start_num is less than the end_num
if [ "$start_num" -gt "$end_num" ]; then
  echo "Error: Starting number must be less than or equal to the ending number."
  exit 1
fi

# Loop through the range and create the folders
for (( num=start_num; num<=end_num; num++ ))
do
  folder="$folder_path/$folder_name$num"
  mkdir "$folder"
  echo "Folder '$folder' created."
done

echo "Folders created successfully!"
