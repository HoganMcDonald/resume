# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repository contains my engineering resume and is designed to leverage agentic workflows to craft custom resumes based on job listings. The system allows for dynamic content selection and formatting to match specific role requirements while maintaining professional presentation standards.

The repository serves as both a resume source and a resume generation platform, enabling tailored versions for different positions by utilizing the comprehensive experience data in `data/CONTEXT.md` and the flexible LaTeX templating system.

## Commands

**Prerequisites:** Install BasicTeX on macOS: `brew install basictex`

- `make build` or `make` - Build the PDF from LaTeX source
- `make watch` - Auto-rebuild on file changes (requires latexmk)
- `make view` - Build and open PDF in default viewer (macOS)
- `make clean` - Remove auxiliary LaTeX files (.aux, .log, .out, etc.)
- `make clean-all` - Remove all generated files including PDF
- `make check` - Check if PDF builds without errors
- `make help` - Show all available targets

**Important:** Always run `make build` to generate `resume.pdf` before committing any new resume version. The PDF should be committed alongside LaTeX changes to ensure the repository contains the latest compiled output.

## Templates

### Experience Section Template
```latex
\resumeSubheading
  {Job Title}{Start Date – End Date}
  {Company Name}{Location}
  \resumeItemListStart
    \resumeItem{Achievement with quantified impact and technical details}
    \resumeItem{Another accomplishment with metrics and technologies used}
  \resumeItemListEnd
```

**Work Experience Best Practices:**
- Lead with strong action verbs: "Architected", "Implemented", "Optimized", "Led", "Created", "Streamlined"
- Include quantified metrics: percentages, dollar amounts, time savings, performance improvements
- Mention specific technologies, frameworks, and tools used
- Focus on business impact and outcomes, not just technical tasks
- Structure: [Action] + [What] + [How/With what tech] + [Quantified result/impact]
- Tailor bullet points to match job requirements and highlight relevant experience
- Keep bullets concise but detailed enough to demonstrate expertise
- Use past tense for previous and current roles

### Technical Skills Section Template
```latex
\section{Technical Skills}
  \begin{itemize}[leftmargin=0.15in,label={}]
    \small{\item{
      \textbf{Category:} Technology, Framework, Tool \\
      \textbf{Another Category:} More technologies and tools \\
    }}
  \end{itemize}
```

**Technical Skills Best Practices:**
- Organize by logical categories (Languages, Frameworks, Cloud/DevOps, Databases, etc.)
- List most relevant and strongest skills first within each category
- Match skills to job requirements - prioritize technologies mentioned in job posting
- Use consistent naming conventions (e.g., "JavaScript/TypeScript" not "JS/TS")

### Education Section Template
```latex
\resumeSubheading
  {Institution Name}{Location}
  {Degree/Certification Title}{Year}
```

### Header Template
```latex
\begin{center}
    \textbf{\Huge \scshape Full Name} \\ \vspace{1pt}
    \small Phone $|$ \href{mailto:email}{\underline{email}} $|$
    \href{https://linkedin.com/in/profile}{\underline{linkedin.com/in/profile}} $|$
    \href{https://github.com/username}{\underline{github.com/username}} \\ \vspace{16pt}
    \small Professional summary highlighting years of experience and key specializations
\end{center}
```

**Header Best Practices:**
- Keep professional summary concise (1-2 lines)
- Highlight years of experience and 2-3 key specializations
- Ensure all links are functional and professional
- Use consistent formatting for contact information
- Professional summary should match the target role's requirements
- Consider adding location if remote work isn't mentioned in job posting

**Note:** Remember to escape special LaTeX characters: `\$` for dollar signs, `\textgreater` and `\textless` for comparison operators, `\&` for ampersands.
