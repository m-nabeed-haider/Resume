# Resume LaTeX

<p align="center">
  <strong>A modular LaTeX resume generation framework for creating multiple role-specific resumes from a single source.</strong>
</p>

<p align="center">
  <a href="https://github.com/m-nabeed-haider/Resume/actions/workflows/build.yml">
    <img src="https://img.shields.io/github/actions/workflow/status/m-nabeed-haider/Resume/build.yml?branch=main&style=for-the-badge&label=Build">
  </a>

  <a href="https://github.com/m-nabeed-haider/Resume/releases">
    <img src="https://img.shields.io/github/v/release/m-nabeed-haider/Resume?style=for-the-badge">
  </a>

  <a href="./LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge">
  </a>

  <img src="https://img.shields.io/badge/Built%20With-LaTeX-008080?style=for-the-badge">
</p>

---

# Overview

This repository provides a **modular resume generation framework** built with **LaTeX**.

Instead of maintaining multiple independent resume files, this project separates personal information, summaries, skills, and projects into reusable modules. Different resume variants are generated simply by switching configuration files.

Currently, the repository supports generating resumes for:

- 🐍 Python Developer
- 🤖 AI Engineer
- ⚙️ MLOps Engineer

Each resume shares the same personal information while dynamically loading different:

- Professional Summary
- Projects
- Skills

This architecture keeps the repository maintainable, scalable, and easy to extend.

---

# Features

- Modular repository structure
- Multiple resume variants
- Configuration-driven architecture
- Single source of truth for personal information
- Reusable project components
- Automatic PDF generation
- GitHub Actions CI pipeline
- Automatic Release PDF publishing
- Easy customization and extension
- Cross-platform development configuration

---

# Repository Structure

```
Resume/
│
├── ai/
│   └── resume.tex
│
├── python/
│   └── resume.tex
│
├── mlops/
│   └── resume.tex
│
├── config/
│   ├── ai.tex
│   ├── mlops.tex
│   └── python.tex
│
├── content/
│   ├── personal/
│   ├── projects/
│   ├── skills/
│   └── summaries/
│
├── cls/
│   └── resume.cls
│
├── .github/
│   └── workflows/
│
├── .vscode/
│
├── LICENSE
├── README.md
└── latexmkrc
```

Useful directories:

- [`ai/`](./ai/)
- [`python/`](./python/)
- [`mlops/`](./mlops/)
- [`config/`](./config/)
- [`content/`](./content/)
- [`cls/`](./cls/)
- [`.github/workflows/`](./.github/workflows/)

---

# How It Works

Every resume shares the same overall structure.

```
Resume
│
├── Contact
├── Summary
├── Education
├── Experience
├── Projects
├── Skills
└── Achievements
```

The only difference between resume variants is the configuration file.

For example,

[`python/resume.tex`](./python/resume.tex)

loads

[`config/python.tex`](./config/python.tex)

which selects

- Python Summary
- Python Projects
- Python Skills

Similarly,

- [`ai/resume.tex`](./ai/resume.tex)
- [`mlops/resume.tex`](./mlops/resume.tex)

load their respective configuration files and generate role-specific resumes.

---

# Configuration Layer

Each configuration file specifies which modules should be loaded.

Example:

```tex
\def\SummaryFile{python}
\def\ProjectsFile{python}
\def\SkillsFile{python}
```

Changing these values generates an entirely different resume without modifying the template itself.

---

# Building Locally

## Requirements

- TeX Live
- latexmk

Verify installation:

```bash
latexmk --version
```

Build a resume:

### Python

```bash
latexmk python/resume.tex
```

### AI

```bash
latexmk ai/resume.tex
```

### MLOps

```bash
latexmk mlops/resume.tex
```

Generated PDFs are created alongside their corresponding source files.

---

# GitHub Actions

## Continuous Integration

Every push or pull request automatically:

- Compiles every resume variant
- Verifies successful LaTeX compilation
- Uploads generated PDFs as workflow artifacts

Workflow:

- [`build.yml`](./.github/workflows/build.yml)

---

## Release Workflow

Publishing a GitHub Release automatically:

- Builds every resume
- Renames generated PDFs
- Uploads PDFs as Release Assets

Workflow:

- [`release.yml`](./.github/workflows/release.yml)

Generated files:

```
Python-Resume.pdf
AI-Resume.pdf
MLOps-Resume.pdf
```

---

# Downloads

The latest generated resumes are available from the project's **Releases** page.

👉 https://github.com/m-nabeed-haider/Resume/releases

---

# Customization

## Personal Information

Located in:

[`content/personal/`](./content/personal/)

Contains:

- Contact
- Education
- Experience
- Achievements

---

## Professional Summaries

Located in:

[`content/summaries/`](./content/summaries/)

Each resume variant has its own summary.

---

## Skills

Located in:

[`content/skills/`](./content/skills/)

Each resume variant has its own dedicated skills section.

---

## Projects

Located in:

[`content/projects/`](./content/projects/)

Projects are grouped by target role.

Each project is modular:

```
project_name/
│
├── entry.tex
├── metadata.tex
└── README.md
```

This makes project descriptions reusable across multiple resume variants.

---

# Adding a New Resume Variant

Creating a new resume requires only four steps.

### 1. Create a configuration

```
config/backend.tex
```

### 2. Create

```
backend/resume.tex
```

which loads

```
config/backend.tex
```

### 3. Add

- Summary
- Skills
- Projects

under

```
content/
```

### 4. Update GitHub Actions

Add the new root file to

- [`build.yml`](./.github/workflows/build.yml)
- [`release.yml`](./.github/workflows/release.yml)

---

# Design Philosophy

This repository follows several software engineering principles:

- Separation of Concerns
- Reusability
- DRY (Don't Repeat Yourself)
- Configuration over Duplication
- Modular Architecture
- Automated Build Pipeline

Instead of duplicating complete resume files, only the required modules are swapped through configuration.

---

# Future Improvements

Planned enhancements include:

- Resume preview images
- ATS compatibility checker
- Cover letter generation
- Resume versioning
- Theme customization
- Dark mode PDF
- Automatic PDF optimization
- Additional resume variants
- Unit tests for LaTeX components

---

# Development

The repository includes configuration files to ensure a consistent development experience across platforms.

- `.editorconfig`
- `.gitattributes`
- `.vscode/settings.json`

These provide consistent formatting, line endings, and editor behavior for contributors.

---

# License

This project is licensed under the [MIT License](./LICENSE).

---

# Author

**Muhammad Nabeed Haider**

Computer Science Undergraduate • AI Engineer • MLOps Enthusiast

GitHub: **[@m-nabeed-haider](https://github.com/m-nabeed-haider)**

---

If you found this project useful, consider giving it a ⭐ on GitHub.