# Templates: CTF Write-Ups & Workflow

**Welcome!** This folder contains the essential bits for creating, writing, and compiling your CTF challenges into polished PDF reports. If you’re wondering why it’s so elaborate—well, some of us just love to complicate things ( me 🙋‍♂️). But hey, the final results look neat, so who’s complaining?

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

---

## Step-by-Step Workflow

### 1. Setting Up Files and Folders

1. **Keep Your `Resources` Folder Nearby**  
   Make sure your script and templates reside in a folder at the same level as your future CTF challenge folders. For example:
   ```
   .
   ├── Resources/
   │   ├── Scripts/
   │   └── Templates/
   ├── CTF_Writeups/
   │   └── [CTF1]/
   │   └── [CTF2]/
   └── ...
   ```

2. **Run `init_ctf_writeup.sh`**  
   - Navigate to `Scripts/` (it’s crucial to run the script from inside that folder).
   - Execute:
     ```bash
     ./init_ctf_writeup.sh
     ```
   - You’ll be prompted for the platform (e.g., “HackTheBox”) and challenge name (e.g., “Devel”).
   - A new folder named `[Platform]_[ChallengeName]` is created under `../../CTF_Writeups/`, containing subfolders for sections, attachments, etc.

### 2. Writing Your Notes in Markdown

1. **Open the Newly Created Challenge Folder**  
   - Inside `Sections/` you’ll see:
     - `01_Challenge_Description.md`
     - `02_Enumeration.md`
     - `03_Exploitation.md`
     - `04_Post_Exploitation.md`
     - `05_Solution.md`
   - Each file hints at what to include (e.g., enumeration commands, exploitation steps).

2. **Edit the `.md` Files**  
   - Jot down your processes, commands, and discoveries.
   - If you’re using Obsidian, open the entire vault, so you can easily link notes with `[[internal links]]`.

### 3. Compiling the Final PDF

1. **Using the Makefile (If Provided)**  
   - In your new challenge folder, simply run:
     ```bash
     make
     ```
   - This typically:
     - Uses pandoc to convert `.md` → `.tex`.
     - Runs `pdflatex` multiple times to generate the final PDF.

2. **Check the `build/` Folder**  
   - Your compiled PDF may appear in `build/`, then the Makefile might copy it into the main folder.

3. **Cleaning Up**  
   - After reviewing the final PDF, you can run `make clean` to remove any intermediate files (like `.aux`, `.log`, etc.) if needed.

### 4. Using Obsidian (Optional, But Highly Recommended)

- **Create or Open Your Obsidian Vault**  
  - Include `CTF_Writeups/` so all your challenge folders are integrated.
- **Leverage Linked Notes**  
  - Use `[[links]]` to cross-reference notes or scripts across different challenges.
- **Beware of Obsidian Links in the PDF**  
  - Pandoc may not interpret these links unless you set up advanced workflows to convert them to footnotes or references. If you keep them in raw Markdown, they might just appear as plain text.

---

## Working with Images

- **Relative Paths**  
  Store screenshots in `Attachments/images/`. In your Markdown, reference them like:
  ```markdown
  ![Nmap Screenshot](../Attachments/images/nmap_scan.png)
  ```
- **Ensure Paths Align with the `.tex` File**  
  If your final `.tex` is compiled from the challenge folder, images often need to be referenced as `Attachments/images/...`. Broken links usually mean the path is off.
- **Scaling**  
  By default, the LaTeX template might scale images to 80% of the text width. Adjust if you want them larger or smaller.


## Included Markdown Sections

Each challenge folder has:

1. **`01_Challenge_Description.md`**  
   High-level details: IP addresses, environment setup, difficulty rating, etc.
2. **`02_Enumeration.md`**  
   All your port scans and service enumeration steps.
3. **`03_Exploitation.md`**  
   The actual exploitation approach, payloads used, vulnerabilities found.
4. **`04_Post_Exploitation.md`**  
   Privilege escalation steps, loot, credential harvesting, pivoting, etc.
5. **`05_Solution.md`**  
   Summarize the entire approach, highlight key lessons, references, and any final notes.

Add or rename these sections as you wish—just remember to adjust `Final_CTF_Report.tex` so it references your new file names.

---

## Why Make It So Complex?

You might wonder, “Why not just write a single `.md` and call it a day?” 
- Because we’re perfectionists (or gluttons for punishment) who love:
  1. **Well-structured** notes,
  2. A **polished PDF** for final documentation,
  3. And the pure satisfaction of running half a dozen commands to do something that *could* have been done in one.
  
In short: **we love to complicate life**—but it sure looks nice and professional at the end!

---

## Troubleshooting & Tips

1. **LaTeX Compilation Errors**  
   - Often related to missing packages or syntax issues in the `.md` files (like an unescaped underscore). Check the `.log` file generated by `pdflatex`.
2. **Images Not Showing**  
   - Verify paths. Must be relative to where the `.tex` file is compiled. If you see “File not found,” it’s usually a path issue.
3. **TOC Issues**  
   - If the table of contents is empty, ensure you’re using numbered sections, and compile LaTeX multiple times. Also watch out for the `titlesec` package if it conflicts.
4. **Obsidian Links**  
   - `[[]]` style links might appear as raw text in your final PDF unless you specifically convert them with a filter.

---

## Final Thoughts

- This **Templates** folder is your best friend for standardizing your CTF write-ups. 
- Sure, it’s a little “extra,” but the resulting PDF is quite nice. 
- Feel free to expand or simplify: want 10 sections? Go for it. Only 3? Also fine.
- Remember: “**If it’s not complicated, are we really having fun?**” (Yes, we are, but let’s pretend we need all these steps.)

**Happy CTF Documenting!** If you get stuck or discover a brilliant new trick, open an issue or drop a note. Enjoy the organized chaos—**we** sure do.
