# Templates: CTF Write-Ups & Workflow

**Welcome!** This folder contains the essential bits for creating, writing, and compiling your CTF challenges into polished PDF reports. If you’re wondering why it’s so elaborate—well, some of us just love to complicate things (\*cough\* me \*cough\*). But hey, the final results look neat, so who’s complaining?

## Table of Contents
1. [Overview](#overview)
2. [Prerequisites](#prerequisites)
3. [Step-by-Step Workflow](#step-by-step-workflow)
   - [1. Setting Up Files and Folders](#1-setting-up-files-and-folders)
   - [2. Writing Your Notes in Markdown](#2-writing-your-notes-in-markdown)
   - [3. Compiling the Final PDF](#3-compiling-the-final-pdf)
   - [4. Using Obsidian (Optional, but Highly Recommended!)](#4-using-obsidian-optional-but-highly-recommended)
4. [Working with Images](#working-with-images)
5. [Included Markdown Sections](#included-markdown-sections)
6. [Why Make It So Complex?](#why-make-it-so-complex)
7. [Troubleshooting & Tips](#troubleshooting--tips)
8. [Final Thoughts](#final-thoughts)

---

## Overview

In this folder, you’ll find:

- **`init_ctf_writeup.sh`**: A Bash script to create a brand-new CTF challenge folder (with the standard sections and attachments).
- **`Final_CTF_Report.tex`**: The LaTeX template that compiles into your final PDF.  
- **Markdown Section Templates** (in a `Sections/` subfolder, if you’re storing them here) that guide you through each stage of writing a CTF challenge report.

By following the instructions here, you’ll:

1. Automate folder creation for each new challenge.
2. Fill in Markdown files with all your notes.
3. Convert everything into a tidy PDF using LaTeX, Pandoc, and a bit of (unnecessarily fun) complexity.

---

## Prerequisites

- **Pandoc**  
  To convert your Markdown notes into `.tex` files.  
  \[Install command on Ubuntu-based systems\]:  
  ```bash
  sudo apt-get update
  sudo apt-get install pandoc
  ```

- **LaTeX Distribution** (e.g., TeX Live)  
  Required to compile `.tex` to PDF.  
  ```bash
  sudo apt-get install texlive-full
  ```
  (Exact package names might vary by distro.)

- **minted** & **Pygments** (already included in `texlive-full`, but if you want separate):  
  ```bash
  sudo apt-get install python3-pygments
  ```
  This ensures syntax highlighting in code blocks if used in LaTeX.

- **Bash**  
  For running the `init_ctf_writeup.sh` script.

- **Obsidian** (Highly Recommended, but optional)  
  Great for storing and linking your Markdown files. If you enjoy linking your notes ([[like so]]), Obsidian is perfect.


# not finished yet .................
