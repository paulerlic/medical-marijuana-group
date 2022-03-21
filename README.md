# Medical Marijuana Group Final Project

## First Segment Presentation (30 points)
### Selected Topic
Medical Marijuana
### Reason Topic Selected 
To help medical marijuana patients select appropriate strains to treat their respective ailments 
### Source Data Description
The Kushy cannabis dataset on GitHub is a collection of tabular data from different sectors of the industry, from strains to products to lab results: 

https://github.com/kushyapp/cannabis-dataset/blob/master/Dataset/Strains/strains-kushy_api.2017-11-14.csv

The Washington cannabis dataset contains over 215,000 laboratory measurements, performed at six different labs, of retail cannabis products from Washington State, originally published on March 14, 2018 in Nature:

https://www.nature.com/articles/s41598-018-22755-2

Replication data provided by Harvard Dataverse:

https://dataverse.harvard.edu/file.xhtml?persistentId=doi:10.7910/DVN/E8TQSD/XT7UNM&version=2.0

### Data Analysis Goal
Determine which medical marijuana strains are best suited as treatment for specific ailments by analyzing their chemical composition and characteristics such as flavor and effects

## Communication Protocols
* Create direct messages for only team members in dedicated medical-marijuana-group Slack channel
* Weekly meetings Tuesday/Thursday during class and Friday/Sunday afternoons 
* Emergency contact information (email/mobile) provided by each team member
* Emergency contact Jemi Shieh 24/7 by Slack/email/text/call as needed

## Team Role Distribution
### GitHub Repository (10 points) – Paul Erlic
Create the following GitHub repository:
* Main Branch including .gitignore and README.md files with team members as collaborators
* Individual Branches for each team member including at least four commits each during the first segment

### Machine Learning Model (35 points) – David Bastien
Create a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
* Takes in data from the provisional database
* Outputs label for input data

### Database Integration (25 points) – Jemi Shieh
Create a provisional database that stands in for the final database and accomplishes the following:
* Begin to clean, organize, and perform exploratory data analysis on the datasets to prepare for analysis
* Sample data that mimics the expected final database structure or schema
* Draft machine learning model is connected to the provisional database

### Technology Architect – Ashley Mayes
Help decide which technologies will be used for each step of the project as follows:
#### Technologies Used
##### Data Cleaning and Analysis
Excel will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Pandas and Python.
##### Database Storage
PostgreSQL is the intended database.
##### Machine Learning
SciKitLearn is the machine learning library to be used to create a clustering algorithm using Python, Google Colab and Jupyter Notebook.
##### Dashboard
Tableau will be used to create a fully functioning and interactive dashboard.

### Dashboard (0 points)
There are no deliverables associated with the dashboard for this segment.

<div class='tableauPlaceholder' id='viz1647832092833' style='position: relative'><noscript><a href='#'><img alt='CHEMOTYPE_CBD_THC-RATIO_BUBBLESBubble Size = Chemo Type 1-3THC to CBD Ratio = Color ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;MM&#47;MMGP&#47;CHEMOTYPE_CBD_THC-RATIO_BUBBLES&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='MMGP&#47;CHEMOTYPE_CBD_THC-RATIO_BUBBLES' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;MM&#47;MMGP&#47;CHEMOTYPE_CBD_THC-RATIO_BUBBLES&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1647832092833');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
