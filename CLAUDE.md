# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repository contains my engineering resume and enables automated resume tailoring through a simple URL-based workflow. Simply share a job posting URL with Claude, and it will:

1. **Analyze the job description** - Extract key requirements, technologies, and culture indicators
2. **Reference experience data** - Use comprehensive career details from `data/CONTEXT.md` 
3. **Modify `resume.tex`** - Automatically update the LaTeX source with tailored content
4. **Build the PDF** - Generate the final customized resume

The system maintains all professional experience while strategically emphasizing the most relevant achievements and technologies for each specific role.

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

## Automated Tailoring Workflow

**When provided a job posting URL, Claude will:**

1. **Fetch & Analyze Job Description**
   - Extract key requirements, preferred technologies, and role expectations
   - Identify cultural indicators and company priorities
   - Note specific terminology used (for keyword matching)

2. **Reference Experience Database**
   - Pull relevant achievements from `data/CONTEXT.md`
   - Match experiences to job requirements
   - Select most impactful metrics and technologies

3. **Update `resume.tex` Automatically**
   - Modify professional summary to address role needs
   - Reorder and rewrite experience bullets for relevance
   - Update technical skills section with job-specific keywords
   - Maintain all mandatory work history positions

4. **Build & Verify**
   - Run `make build` to generate updated PDF
   - Ensure proper formatting and LaTeX compilation

**IMPORTANT:** The resume will ALWAYS be 2 full pages and include ALL work history. Tailoring happens through content emphasis and bullet point selection, never by removing positions.

## Linear Job Tracking Format

When creating Linear tickets for job applications, use the following standardized format:

**Ticket Title Format:** `[Company Name] - [Role Title]`

**Ticket Description Structure:**
```markdown
## Job Details

**Company:** [Company Name]  
**Role:** [Full Role Title]  
**Location:** [Location/Remote]  
**Employment Type:** [Full-Time/Part-Time/Contract]  
**Compensation:** [Salary Range + Equity if mentioned]  
**Job URL:** [Link to job posting]

## About [Company Name]

[Brief company description, mission, funding status if relevant]

## Key Requirements

* **[X]+ years** [specific experience requirement - bold the years]
* [Other key requirements listed as bullets]
* [Technical requirements]

## Main Responsibilities

* [Primary responsibilities as bullets]
* [Keep concise but comprehensive]

## Technologies/Stack

* **Frontend:** [Technologies]
* **Backend:** [Technologies]  
* **Infrastructure:** [Cloud/DevOps tools]
* **Databases:** [Database systems]

## Benefits

* [Key benefits if mentioned]
* [Compensation details]
* [Remote policy]

## Application Link

[Direct link to application]

## Resume Tailoring Notes (Optional)

* [Specific elements to emphasize]
* [Technologies to highlight]
* [Experience to focus on]
```

**Labels to Use:**
- `Applied` - Application submitted
- Add other relevant labels as needed

**Status Options:**
- `Todo` - Not yet applied
- `In Progress` - Application in process or resume being tailored
- `Backlog` - Interesting but lower priority
- `Canceled` - Decided not to apply
- `Duplicate` - Duplicate posting

**Priority Levels:**
- **Urgent (1):** Perfect match, apply immediately
- **High (2):** Strong match, apply soon
- **Medium (3):** Good match, apply when time permits
- **Low (4):** Interesting but not priority

**Attachments:** Always attach the job posting URL as an attachment with descriptive title like "[Company] Job Posting"
