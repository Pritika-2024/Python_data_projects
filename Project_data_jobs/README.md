# Data Jobs Market Analysis Using Hugging Face Dataset

## Introduction
This project presents an end-to-end exploratory data analysis of the global data jobs market using a dataset sourced from Hugging Face. The goal is to understand how data roles are distributed across countries, experience levels, skills, and salary ranges, and to derive meaningful insights through structured data visualization and interpretation.

---

## Dataset
The dataset is sourced from Hugging Face and contains approximately **XX,XXX job records** related to data roles worldwide. Each row represents an individual job posting, and the dataset includes both categorical and numerical attributes.

**Key columns and data types:**
- `job_title_short` (categorical): Standardized job roles such as Data Analyst, Data Scientist, and Data Engineer  
- `company_location` (categorical): Country where the job is located  
- `experience_level` (categorical): Entry-level, Mid-level, Senior-level, and Executive  
- `job_skills` (categorical / exploded): Required technical skills  
- `salary_year_avg` (numerical): Average yearly salary  
- `work_setting` (categorical): Remote / On-site / Hybrid  

The dataset was loaded using the Hugging Face `datasets` library and converted into a Pandas DataFrame for analysis.

---

## Data Cleaning
Data cleaning involved removing duplicate job postings, handling missing salary values, standardizing country and role names, converting salary fields into numerical format, and filtering out incomplete records. Skill data was normalized by exploding multi-skill entries to enable accurate frequency and salary-based analysis.

---

## Data Visualization and Analysis

### Country-wise Distribution of Data Jobs
![Country Distribution](docs/image.png)

The chart shows that the **United States accounts for approximately 26% of total job postings**, making it the largest contributor by a wide margin. **India follows with around 6%**, and the **United Kingdom contributes close to 5%**, placing it third. Although India ranks second, the difference between the US and India exceeds 20 percentage points, indicating that data job opportunities are heavily concentrated in the US market. This suggests that global hiring for data roles is not evenly distributed and remains centralized in developed economies.

---

### Job Role Distribution
![Job Role Distribution](docs/image%20copy.png)

This visualization indicates that **Data Analyst roles form the largest portion of job postings**, followed by Data Scientist and Data Engineer roles. The higher count of analyst positions suggests that organizations prioritize descriptive and diagnostic analytics, such as reporting and dashboarding, over advanced modeling or infrastructure roles. This distribution reflects a strong demand for roles that directly support business decision-making.

---

### Experience Level Distribution
![Experience Level Distribution](docs/image%20copy%202.png)

The chart reveals that **entry-level and mid-level roles together account for the majority of job postings**, while senior and executive roles form a much smaller segment. This indicates that companies are scaling data teams by hiring operational talent rather than leadership-heavy roles. It also suggests that the data job market currently offers more opportunities for early-career professionals compared to highly experienced candidates.

---

### Salary Distribution by Job Role
![Salary Distribution](docs/image%20copy%203.png)

The salary distribution shows that **Data Scientists and Data Engineers have higher median salaries** compared to Data Analysts. Data Analyst salaries are more tightly clustered, while the other roles show wider ranges, indicating greater salary variability. This suggests that advanced technical roles offer higher earning potential but are more sensitive to factors such as experience, specialization, and location.

---

### Skill Demand Frequency
![Skill Frequency](docs/image%20copy%204.png)

This chart highlights that **Python and SQL are the most frequently mentioned skills**, appearing in the majority of job postings. Excel and visualization tools follow but with noticeably lower frequency. This indicates that programming and database querying form the foundational skill set across data roles, regardless of specialization.

---

### Skill vs Salary Relationship
![Skill vs Salary](docs/image%20copy%205.png)

The visualization shows that skills related to **machine learning, cloud platforms, and big data technologies** are associated with higher median salaries compared to foundational skills. While Python and SQL are widely required, they do not alone correspond to the highest salaries, indicating that specialization beyond core skills is a key differentiator in compensation.

---

### Optimal Skill Combinations
![Optimal Skill Combinations](docs/image%20copy%206.png)

This chart demonstrates that professionals who combine **foundational skills (Python, SQL)** with **specialized technologies** achieve higher salary outcomes than those relying on standalone skills. It suggests that market value increases when core competencies are augmented with advanced or niche expertise.

---

### Skill Popularity vs Market Value
![Skill Popularity vs Market Value](docs/image%20copy%207.png)

The chart shows that some skills with high demand do not necessarily yield the highest salaries, while certain low-frequency skills command premium pay. This reflects a supply–demand imbalance where scarce skills, even if less popular, provide stronger salary leverage due to limited availability of expertise.

---

## Prediction Based on Observed Trends
Based on the trends observed across the charts, it is likely that demand for entry-level and mid-level data roles will continue to grow as organizations expand data-driven operations. Foundational skills such as Python and SQL are expected to remain mandatory, while salary growth will increasingly favor professionals who acquire specialized skills in machine learning, cloud platforms, and advanced analytics. Geographic concentration suggests that developed markets will continue to dominate high-value data roles, though emerging markets may see gradual growth rather than rapid convergence.

---

## Conclusion
This analysis demonstrates how structured data exploration and visualization can reveal meaningful patterns within the global data jobs market. The findings highlight strong geographic concentration, role-based demand differences, and clear skill–salary relationships. Overall, the dataset indicates that career growth in the data domain is best supported by a combination of strong fundamentals, early industry entry, and targeted technical specialization.

---

## Author
**Pritika Mediboina**  
Data Analytics | Python | SQL | Data Visualization


