#!/bin/bash

echo "Initializing a new CTF Write-Up..."

read -p "Enter Platform Name: " platform_name
read -p "Enter Challenge Name: " challenge_name
read -p "Enter Challenge Description: " challenge_description

challenge_folder="../../CTF_Writeups/${platform_name}_${challenge_name}"
template_folder="../Templates"

mkdir -p "$challenge_folder/Sections"
mkdir -p "$challenge_folder/Attachments/images"
mkdir -p "$challenge_folder/Attachments/logs"
mkdir -p "$challenge_folder/Attachments/scripts"
mkdir -p "$challenge_folder/Exported_TeX_Files/Sections"
mkdir -p "$challenge_folder/Build"

# Copy template files
cp "$template_folder/CTF_Writeup_Template.md" "$challenge_folder/Final_CTF_Report.md"
cp "$template_folder/LaTeX_CTF_Template.tex" "$challenge_folder/Build/Final_CTF_Report.tex"
cp "$template_folder/Makefile_CTF" "$challenge_folder/Makefile"

# Copy section templates
cp "$template_folder/Sections_CTF/"*.md "$challenge_folder/Sections/"

# Replace placeholders in Markdown files
sed -i "s/{{Platform_Name}}/$platform_name/g" "$challenge_folder/Final_CTF_Report.md"
sed -i "s/{{Challenge_Name}}/$challenge_name/g" "$challenge_folder/Final_CTF_Report.md"
sed -i "s/{{Challenge_Description}}/$challenge_description/g" "$challenge_folder/Final_CTF_Report.md"

# Replace placeholders in LaTeX files
sed -i "s/{{Platform_Name}}/$platform_name/g" "$challenge_folder/Build/Final_CTF_Report.tex"
sed -i "s/{{Challenge_Name}}/$challenge_name/g" "$challenge_folder/Build/Final_CTF_Report.tex"

echo "CTF Write-Up initialized at $challenge_folder"
