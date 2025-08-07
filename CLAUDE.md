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

**MANDATORY EXPERIENCE TO INCLUDE (ALL positions must appear on EVERY resume):**
1. Reforge - Senior Software Engineer (Jan 2024 – Present)
2. Ephemeral Tattoos - Senior Software Engineer (Jul 2022 – Sep 2023)
3. Soona - Senior Software Engineer (Mar 2020 – Jul 2022)
4. Brandless - Software Engineer II (Apr 2018 – Mar 2019)
8. Freelance Software Engineer (2018 – 2021)
9. Teaching Assistant - University of Minnesota Coding Bootcamp (Jan 2018 – Jun 2018)

```latex
\resumeSubheading
  {JOB_TITLE}{START_DATE – END_DATE}
  {COMPANY_NAME}{LOCATION}
  \resumeItemListStart
    \resumeItem{ACHIEVEMENT_WITH_QUANTIFIED_IMPACT_AND_TECHNOLOGIES}
    \resumeItem{ANOTHER_ACCOMPLISHMENT_WITH_METRICS_AND_TECHNOLOGIES}
  \resumeItemListEnd
```

**Work Experience Best Practices (2025 Standards):**
- **XYZ Formula**: Structure bullets as "Accomplished X by doing Y, resulting in Z" (Google's proven format)
- **Action Verbs**: Lead with strong, varied verbs: "Architected", "Spearheaded", "Accelerated", "Bootstrapped", "Resolved"
- **Quantify Everything**: Include specific metrics when available - percentages, dollar amounts, time savings, scale (users, requests, data volume)
- **Technologies in Context**: Mention specific tech stacks within achievement bullets, not just as a list. DO NOT choose arbitrarily. Only mention tech for a specific project if that is what it says in CONTEXT.md
- **Leadership at Senior Level**: Include at least one bullet about mentoring, team leadership, or cross-functional collaboration
- **End-to-End Ownership**: Highlight complete project ownership from concept to deployment (especially for startups)
- **Business Impact Focus**: Connect technical work to business outcomes (revenue, user retention, cost savings)
- **Bullet Structure**:
  - Keep to 1-2 lines maximum per bullet (ideally one line)
  - 3-5 bullets per role (no more than 5)
  - Most impactful/relevant achievements first
- **Tense**: Use past tense for all roles (including current) for consistency
- **Startup-Specific**: For startup roles, emphasize versatility, wearing multiple hats, and rapid iteration

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

**Technical Skills Best Practices (2025 Standards):**
- **Honest Representation**: The majority of my experience is in Ruby on Rails and Next.js. Make sure those always appear in the skills section in some capacity. Only include other skills if they are mentioned in CONTEXT.md
- **Keyword Matching**: Mirror exact terminology from job posting (e.g., "React.js" if that's what they use)
- **Quality Over Quantity**: 6-10 core skills maximum
- **Strategic Categorization**: Group by: Languages, Frameworks, Cloud/DevOps, Databases, Tools
- **Relevance First**: List most relevant skills to the job first within each category
- **Consistent Naming**: Use industry-standard names (e.g., "JavaScript/TypeScript" not "JS/TS")
- **Context in Experience**: Skills should also appear in work experience bullets to show practical application
- **Avoid Outdated Tech**: Omit obsolete or irrelevant technologies unless specifically required
- **Methodologies**: Include Agile/Scrum, TDD, CI/CD if relevant to role
- **AI/Automation**: Mention ML frameworks or AI tools

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
    \small PROFESSIONAL_SUMMARY
\end{center}
```

**Header Best Practices (2025 Standards):**
- **Professional Summary (1-2 sentences)**:
  - Lead with title matching recent experience (e.g., "Senior Software Engineer")
- State years of experience and primary tech stack (7+ years, Ruby on Rails, TypeScript)
  - Highlight scale of impact (users served, systems built)
  - Mention leadership/mentorship for senior roles
  - Include domain expertise if relevant (fintech, healthtech)
- Example: "Results-driven Staff Software Engineer with 7+ years building scalable Ruby on Rails/TypeScript platforms. Drove technical decision making using Results-driven approach, mentoring junior engineers, and delivering high-impact features for SaaS products with 100K+ users."
- **Avoid**: Generic objectives, clichés ("team player"), what you want vs. what you offer

**Note:** Remember to escape special LaTeX characters: `\$` for dollar signs, `\textgreater` and `\textless` for comparison operators, `\&` for ampersands.

## Tailoring Process

**For Each Application:**
1. **Analyze Job Posting**: Extract key requirements, technologies, culture indicators
2. **Include ALL Work Experience**: ALWAYS include all companies (Reforge, Ephemeral Tattoos, Soona, Brandless, Foundry) plus Freelance work and Teaching Assistant role - never omit any positions
3. **Match & Mirror**: Align your experience bullets to job requirements while keeping all roles
4. **Reorder by Relevance**: Adjust bullet points within each role to highlight most relevant achievements first
5. **Customize Summary**: Directly address the role's primary needs
6. **Verify Keywords**: Ensure critical terms appear 2-3 times naturally
7. **Cultural Fit**: For startups, emphasize passion, adaptability, impact

**IMPORTANT:** The resume should ALWAYS be 2 full pages and include ALL work history. Tailor by adjusting bullet points and emphasis, not by removing experiences.
