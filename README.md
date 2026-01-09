<!--
# Customer-Shopping-Behaviour-Analysis


Analysed employee performance and retention patterns using HR data to uncover factors influencing productivity, engagement, and employee tenure, to help organizations reduce turnover and improve workforce efficiency through data-driven insights using Python, Jupyter Notebook, and Power BI.

## Table of Contents
- <a herf = "#overview">Overview</a>
- <a herf = "#business-problem">Business Problem</a>
- <a herf = "#dataset">Dataset</a>
- <a herf = "#tools--technologies">Tools & Technology</a>
- <a herf = "#project-structure">Project Structure</a>
- <a herf = "#data-cleaning--preparation">Data Cleaning & Preparation</a>
- <a herf = "#exploratory-data-analysis-eda">Exploratory Data Ananlysis (EDA)</a>
- <a herf = "#key-metric-analysis">Key Metric Analysis</a>
- <a herf = "#research-factors">Research Factors</a>
- <a herf = "#key-findings">Key Findings</a>
- <a herf = "#dashboard">Dashboard</a>
- <a herf = "#how-to-run-this-project">How to Run this Project</a>
- <a herf = "#final-recommendations">Final Recommendations</a>
- <a herf = "#author--contact">Author & Contact</a>

<h2><a class="anchor" id="overview"></a> Overview</h2>


<h2><a class = "anchor" id="business-problem"></a>Business Problem</h2>



<h2><a class ="anchor" id ="dataset"></a>Dataset</h2>

[Employee Dataset](https://github.com/shwetapoojaryr/Employee-Performance---Retention-Analysis-Python-PowerBI/blob/main/employees_dataset.csv)

- Rows: 17417
- Columns: 13
- Key Features :  Employee Identifier (employee_id), Organizational Attributes (department, region), Demographic Features (education, gender, age), Recruitment Information (recruitment_channel), Training & Development (avg_training_score, no_of_trainings), Performance Metrics (KPIs_met_more_than_80, previous_year_rating), Recognition & Experience (length_of_service,  awards_won)
- Missing Data: 771 values in education column & 1363 in previous_year_rating column. 

<h2><a class ="anchor" id ="tools--technologies"></a>Tools and Technologies</h2>

- Python (Pandas, Matplotlib, Seaborn, Scipy)

- Jupyter Notebook

- Power BI (Interactive Visualisations)

- GitHub

<h2><a class="anchor" id ="project-structure"></a>Project Structure</h2>


<h2><a class="anchor" id ="data-cleaning--preparation"></a>Data Cleaning & Preparation</h2>

Handled the missing values with fillna(), median(), & mode () functions 

<img width="400" height="380" alt="image" src="https://github.com/user-attachments/assets/583dee76-6786-44db-9f4f-073eb9c79a5a" />

Encoded Categorical variables and consistency in data formatting.

<img width="700" height="200" alt="image" src="https://github.com/user-attachments/assets/fc9ddf7b-e5d8-450e-a8a2-c6ca5b89678a" />

<h2><a herf = "#exploratory-data-analysis-eda"></a>Exploratory Data Ananlysis (EDA)</h2>

**Initial Exploration: Used df.info() to check structure and .describe() for summary statistics.**

<img width="350" height="270" alt="image" src="https://github.com/user-attachments/assets/f4857dce-de20-4b61-9b35-27c4a48f55de" />
<img width="650" height="200" alt="image" src="https://github.com/user-attachments/assets/5544b774-9550-4848-9ea2-1de17a4461e2" />

**Found the missing and duplicate values in the dataset using isnull() and duplicated() functions.** 

<img width="350" height="450" alt="image" src="https://github.com/user-attachments/assets/a4cef920-6129-4be8-9af7-47195dfab961" />

**Found the distribution of key numerical variables and categorical variables.**

<img width="550" height="350" alt="image" src="https://github.com/user-attachments/assets/f1821aaf-91e0-47cc-818e-607f84b0fa99" />
<img width="550" height="350" alt="image" src="https://github.com/user-attachments/assets/950b57e0-9dc6-4071-a9f5-4c744addbc9c" />
<img width="500" height="350" alt="image" src="https://github.com/user-attachments/assets/f3f04d71-a4d7-4e43-953d-4175a816b5d6" />
<img width="530" height="330" alt="image" src="https://github.com/user-attachments/assets/ac7b0c4c-a891-4680-8c33-27fd1d698dd0" />

**Outlier detection using seaborn library.**

<img width="440" height="350" alt="image" src="https://github.com/user-attachments/assets/664fc842-ded2-47b6-8600-23f090487723" />
<img width="440" height="330" alt="image" src="https://github.com/user-attachments/assets/088709bc-defe-4332-921a-690b8d5ce1d1" />

<h2><a class= "#key-metric-analysis"></a>Key Metric Analysis</h2>

- Summarizing performance metrics by creating a performance_metrics table 
<img width="661" height="280" alt="image" src="https://github.com/user-attachments/assets/6b80df18-c3f9-4d93-99a1-a33934e8ddda" />

- Analysing key metrics such as KPI Achievements vs performance, awards impact on performance,length of service analysis 
<img width="450" height="320" alt="image" src="https://github.com/user-attachments/assets/55d05b54-834b-4431-839f-926234708888" />
<img width="450" height="500" alt="image" src="https://github.com/user-attachments/assets/34dd9892-0d09-4acf-a007-3591ea32ad39" />

- Retention Trends Analysis 
Trend analysis assuming longer length of service = higher retention 
Analysing retention by age group, education, department, training impact on retention. 
<img width="550" height="780" alt="image" src="https://github.com/user-attachments/assets/748587ad-9e93-4d71-b3f8-dfa197e01034" />
<img width="600" height="750" alt="image" src="https://github.com/user-attachments/assets/c232ead2-f2af-442a-8d03-e17f9d78a4ff" />

<h2><a class= "#research-factors"></a>Research Factors</h2>

Key Metrics Analysis: Analyse key performance and retention metrics such as length of service, average training score, awards won, previous year ratings, and KPIs met.

Retention Trends Analysis: Assess retention trends based on age, education, department, and training.

Predictive Insights: Based on the analysis, provide actionable recommendations to HR for improving employee retention and performance management strategies.

<h2><a class= "#key-findings"></a>Key Findings</h2>

**Workforce Overview**

- Employees are mostly in the early to mid-career range (20–40 years). 
- Distribution across departments and regions varies, highlighting operational concentration risks. 
- Recruitment channels influence performance outcomes, indicating differences in candidate quality.

**Performance Insights**
  
- High training scores, KPI achievement, and awards strongly correlate with better performance. 
- Consistent performers continue to excel year-over-year. 
- Departments with lower performance may need targeted interventions.
  
**Retention Trends Insights**

- High retention: Employees aged 30–40, award winners, and consistent KPI achievers. 
- Retention risk: Early-career employees (20–30), low KPI achievers, and employees in certain departments with shorter tenure. 
- Effective training and recognition directly improve retention.

**Employees with higher training scores and KPI achievement show longer retention**

**Award-winning employees consistently outperform peers** 

**Mid-career age groups (30–40) show the highest retention** 

**Certain departments have shorter service lengths, indicating engagement gaps** 

**Employees with lower previous year ratings are more likely to exit early**

<h2><a class= "#Dashboard"></a>Dashboard</h2>
<img width="1280" height="700" alt="image" src="https://github.com/user-attachments/assets/af233421-224e-4531-9bb3-8746dbb9aac6" />
<img width="1270" height="330" alt="image" src="https://github.com/user-attachments/assets/26111dfd-b372-45a7-be74-41dc1041581e" />

<h2><a class= "#how-to-run-this-project"></a>How to Run this Project</h2>


<h2><a class= "#final-recommendations"></a>Final HR Recommendations</h2>

1. Increase targeted training programs for low-performing departments. 

2. Introduce recognition programs to improve motivation and retention. 

3. Focus retention strategies on early-career employees (20–30 age group). 

4. Use KPI performance as an early indicator for engagement interventions. 

5. Invest in continuous learning for employees with high potential but low ratings. 

<h2><a class= "#author--contact"></a>Author & Contact</h2>

**Shweta Poojary**

Data Analyst

Email: [shwetapoojarywm@gmail.com](mailto:shwetapoojarywm@gmail.com)

[LinkedIn](https://www.linkedin.com/in/shweta-p-176861295/)

[Portfolio](https://github.com/shwetapoojaryr)
-->
