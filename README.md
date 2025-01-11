# CTF Write-Ups and Templates

Welcome to my CTF Write-Ups repository. This repo showcases the **final PDF reports** for my completed CTF challenges, organized by platform (**if I'm not too lazy to upload them** 😊). It also includes the **template** and **script** I use to generate these reports locally.

---

## Repository Structure

```
CTF-Repo/
├── README.md
├── Templates/
│   ├── README.md
│   ├── init_ctf_writeup.sh
│   └── Final_CTF_Report.tex
└── PDFs/
    ├── HackTheBox/
    │   ├── Challenge1.pdf
    │   ├── Challenge2.pdf
    │   └── ...
    ├── TryHackMe/
    │   ├── ChallengeA.pdf
    │   └── ...
    └── OtherPlatform/
        └── ...
```

1. **Templates/**  
   Contains my bash script (`init_ctf_writeup.sh`) and LaTeX file (`Final_CTF_Report.tex`). These let me generate the folder structure and compile reports for each challenge.  
   - Refer to `Templates/README.md` for instructions on how to use them.

2. **PDFs/**  
   This folder stores all my final CTF challenge reports, **grouped by platform**. Each subfolder (e.g., `HackTheBox`, `TryHackMe`) contains PDF files for the respective challenges on that platform.

---

## How I Use This Repository

1. **Local Work**  
   - I maintain a local workflow where I store all Markdown sections, scripts, logs, and attachments for each challenge.  
   - I use the script (`init_ctf_writeup.sh`) and LaTeX template (`Final_CTF_Report.tex`) from `Templates/` to create and compile my write-ups.

2. **Generating a Final PDF**  
   - After finishing a challenge write-up and testing everything locally, I produce a final PDF named `Final_CTF_Report.pdf`.  
   - I copy that PDF into the appropriate platform folder in `PDFs/`.

3. **Committing and Pushing**  
   - I then commit and push the new PDF (or updates) so others can view the solution flow in a single, polished report.

---

## Usage for Others

- If you want to **view** the challenge solutions:
  - Navigate to `PDFs/` and pick a platform folder. Each PDF there is a final write-up for a completed challenge.

- If you're interested in **my method** of creating these reports:
  - Check the `Templates/` folder. The [README.md in Templates](Templates/README.md) explains how I generate new CTF challenge folders, handle Markdown sections, and compile to PDF.

---

## Disclaimer

1. **Educational Purposes**  
   - These write-ups are intended purely for **educational** and **reference** purposes.
2. **Platform Rules**  
   - Some CTF platforms have strict rules about sharing solutions. I avoid posting explicit flags or bypassing any guidelines. Please respect each platform’s policy.
3. **No Guarantees**  
   - The steps and methods shown in the PDFs are based on my personal findings. They may not always be the most efficient or only route.

---

## Contact / Feedback 

Feel free to open an issue or pull request if you have suggestions or spot any mistakes. Feedback is always welcome.

---

**Enjoy exploring my CTF final PDFs (if I post any!) and learning about the templates I use!**
