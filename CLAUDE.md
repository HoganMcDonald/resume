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

**Placeholder Format:** Use `PLACEHOLDER_NAME` format with underscores (not square brackets) to avoid LaTeX math mode conflicts.

### Experience Section Template
```latex
\resumeSubheading
  {JOB_TITLE}{START_DATE – END_DATE}
  {COMPANY_NAME}{LOCATION}
  \resumeItemListStart
    \resumeItem{ACHIEVEMENT_WITH_QUANTIFIED_IMPACT_AND_TECHNOLOGIES}
    \resumeItem{ANOTHER_ACCOMPLISHMENT_WITH_METRICS_AND_TECHNOLOGIES}
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
      \textbf{SKILL_CATEGORY_1:} RELEVANT_TECHNOLOGIES_FOR_JOB \\
      \textbf{SKILL_CATEGORY_2:} RELEVANT_TECHNOLOGIES_FOR_JOB \\
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
  {INSTITUTION_NAME}{LOCATION}
  {DEGREE_OR_CERTIFICATION}{YEAR}
```

### Header Template
```latex
\begin{center}
    \textbf{\Huge \scshape FULL_NAME} \\ \vspace{1pt}
    \small PHONE $|$ \href{mailto:EMAIL}{\underline{EMAIL}} $|$
    \href{https://linkedin.com/in/LINKEDIN_HANDLE}{\underline{linkedin.com/in/LINKEDIN_HANDLE}} $|$
    \href{https://github.com/GITHUB_HANDLE}{\underline{github.com/GITHUB_HANDLE}} \\ \vspace{16pt}
    \small PROFESSIONAL_SUMMARY_LINE_1 \\ \vspace{1pt}
    \small PROFESSIONAL_SUMMARY_LINE_2
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
