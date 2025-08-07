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

**Work Experience Best Practices (2025 Standards):**
- **XYZ Formula**: Structure bullets as "Accomplished X by doing Y, resulting in Z" (Google's proven format)
- **Action Verbs**: Lead with strong, varied verbs: "Architected", "Spearheaded", "Accelerated", "Bootstrapped", "Resolved"
- **Quantify Everything**: Include specific metrics - percentages, dollar amounts, time savings, scale (users, requests, data volume)
- **Technologies in Context**: Mention specific tech stacks within achievement bullets, not just as a list
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
- **Keyword Matching**: Mirror exact terminology from job posting (e.g., "React.js" if that's what they use)
- **Quality Over Quantity**: 6-10 core skills maximum - only list what you'd confidently discuss in interview
- **Strategic Categorization**: Group by: Languages, Frameworks, Cloud/DevOps, Databases, Tools
- **Relevance First**: List most relevant skills to the job first within each category
- **Consistent Naming**: Use industry-standard names (e.g., "JavaScript/TypeScript" not "JS/TS")
- **Context in Experience**: Skills should also appear in work experience bullets to show practical application
- **Avoid Outdated Tech**: Omit obsolete or irrelevant technologies unless specifically required
- **Methodologies**: Include Agile/Scrum, TDD, CI/CD if relevant to role
- **AI/Automation**: Mention ML frameworks or AI tools only if genuinely experienced and relevant

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

**Header Best Practices (2025 Standards):**
- **Professional Summary (2-4 sentences)**:
  - Lead with title matching target role (e.g., "Staff Full-Stack Engineer")
  - State years of experience and primary tech stack
  - Highlight scale of impact (users served, systems built)
  - Mention leadership/mentorship for senior roles
  - Include domain expertise if relevant (fintech, healthtech)
  - Example: "Results-driven Staff Software Engineer with 10+ years building scalable Ruby on Rails/TypeScript platforms. Architected fintech systems serving 5M+ users, led teams of 5-10 engineers."
- **Contact Format**: Name, Email, Phone, LinkedIn, GitHub (optionally portfolio)
- **Location**: Include city/state for local roles, omit for remote positions
- **Links**: Ensure GitHub showcases relevant, quality code samples
- **Avoid**: Generic objectives, clichés ("team player"), what you want vs. what you offer

**Note:** Remember to escape special LaTeX characters: `\$` for dollar signs, `\textgreater` and `\textless` for comparison operators, `\&` for ampersands.

## Resume Format & ATS Optimization (2025)

**Structure Requirements:**
- **Length**: 2 page ideal
- **Format**: Clean, single-column layout with standard section headers
- **File**: PDF with selectable text (not scanned), named professionally (FirstnameLastname_Resume.pdf)
- **Font**: Sans-serif (Calibri, Arial) for ATS compatibility
- **Sections Order**: Header → Summary → Experience → Skills → Education
- **Margins**: Standard margins for readability, no text in headers/footers

**ATS Best Practices:**
- **Keyword Optimization**:
  - Mirror exact job posting terminology 2-3 times throughout resume
  - Include both acronyms and full terms (e.g., "CI/CD (Continuous Integration/Continuous Delivery)")
  - Place critical keywords in multiple sections (summary, skills, experience)
- **Standard Headers**: Use conventional section titles ("Professional Experience" not creative alternatives)
- **Simple Formatting**: Avoid tables, text boxes, graphics, or complex layouts
- **Bullet Points**: Use standard bullets (●, ○, ■) not special characters

## Startup & Founding Engineer Focus

**Key Differentiators for Startup Roles:**
- **Full-Stack Ownership**: Emphasize end-to-end project delivery
- **Rapid Iteration**: Highlight ability to ship quickly and iterate based on feedback
- **Multiple Hats**: Show versatility across frontend, backend, DevOps, even product
- **Scrappy Solutions**: Include examples of doing more with less, cost optimization
- **User Impact**: Direct connection between your work and user/business metrics
- **Early-Stage Experience**: If applicable, mention employee number, founding team role
- **Entrepreneurial**: Include side projects, open source, hackathons

**Additional Sections (Optional):**
- **Projects**: Live demos, GitHub repos with significant stars/activity
- **Community**: Tech meetup organization, conference speaking, mentoring
- **Domain Interest**: Side projects or experience in the startup's industry

## Tailoring Process

**For Each Application:**
1. **Analyze Job Posting**: Extract key requirements, technologies, culture indicators
2. **Match & Mirror**: Align your experience bullets to job requirements
3. **Reorder by Relevance**: Most relevant experiences and skills first
4. **Customize Summary**: Directly address the role's primary needs
5. **Verify Keywords**: Ensure critical terms appear 2-3 times naturally
6. **Cultural Fit**: For startups, emphasize passion, adaptability, impact
