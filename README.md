# Medical Marijuana Group Final Project


### Selected Topic
Medical Marijuana Strain Selection Analysis

![slides](https://raw.githubusercontent.com/paulerlic/medical-marijuana-group/main/Images/Slides.gif)

Link to presentation: https://docs.google.com/presentation/d/1T1nRURT1p7oJN2ruLPGVpZXlen5MgNw84jo5yZJZMVY/edit#slide=id.g11d87207918_1_21

#### Reason for choosing this Topic:

Marijuana has long been a controversial topic in the US, at one point in history it was perfectly legal. It was grown, sold, and consumed openly. Benjamin Franklin, Thomas Jeffereson, and James Madison to name a few had cultivated hemp in the 1700's. The marijuana crop has long been a part of the US economey and with recently passed legislation marijuana is once again becoming a part of the US economey. Cannabis has long been known to have medicinal qualities going back many centuries from the Egyptians all the way to the silk road and was grown in much of Asia thousands of years ago. However only recently have scientists and medical professionals been able to quantify and measure the medicinal properties of marijuana, there are plenty well documented medical applications for Marijuana. Doctors have been prescribing medicinal marijuana to treat, depression, stress, nausea, epilepsy, seizures, glaucoma, and numerous other ailments. There have been promising developments in the field of cancer research with several studies showing that medicinal marijuana can help to alleviate certain symptoms from certain types of cancer and to help mitigate the side effects of chemotherapy. 

There is one issue however, since marijuana has been illegal for so long many patients have no first hand experience with the plant and many of them are trying it for the first time when a doctors prescribes it as a treament. The goal of this project is to see if there is a correlation between the various strains of medical marijuana and the ailments they are intended to treat. If a relationship between strain and ailment does exist then it may be possible to create an easy to use engine for medical marijuana patients to identify which strains will best treat their ailments.  

### Questions we hope to answer:
  1. Can a Neural Network be created that can identify patterns in strains?
  2. Can we correctly match a patients ailments to the effects of certain strains?

### Hypothesis

#### Null Hypothesis: Do Sativa ,Indicia and Hybird strains share a correlation with certain effects that are best suited for the treamtent of patient aliments.

Can we find a positive correlation between the strain type and ailments, for example will strains that fall under the sativa category treat stress, and depression. Will strains that fall under the indica category treat ailments like nausea and lack of sleep?

#### Alternate Hypothesis: There is no relationship between strains and their effects.
Determine which medical marijuana strains are best suited as treatment for specific ailments by analyzing their chemical composition and characteristics such as flavor and effects.By creating a neutral network that allows us to recognize similar characterizes in strains of cannabis that would best work to help relieve a whole array of symptoms ranging from deppression, stress, pain, inflammation ,etc.. We believe that creating a netural network in which our machine can learn 

### Team Role Distribution
* Triangle -Machine Learning Model - David Bastien
* Square - GitHub Respository - Paul Erlic
* X - Technology Architect - Ashley Mayes
* Circle - Database Integration - Jemi Shieh

### Resources
* Kushy cannabis Data: https://github.com/kushyapp/cannabis-dataset/blob/master/Dataset/Strains/strains-kushy_api.2017-11-14.csv
* Washington cannabis data: https://www.nature.com/articles/s41598-018-22755-2
* Harvard Dataverse Replication data: https://dataverse.harvard.edu/file.xhtml?persistentId=doi:10.7910/DVN/E8TQSD/XT7UNM&version=2.0
* Cannabis US legalization map: https://data.world/sya/marijuana-laws-by-state

### Technolgy Used:
* Data Analysis: Excel, Pandas and SQL used to perform data exploration, cleaning and preprocessing the data.
* Database Storage: PostgreSQL is the storage database and psycopg2 (import model data from database) and SQLAlchemy (export data cleaning/model output to database) used to interface and connect the model with the database in Python.
* Machine Learning: TensorFLow, KerasTuner, and SciKitLearn machine learning libraries used to create a Deep Learning Neural Network using Python in Jupyter Notebook.
* Dashboard: Tableau, JavaScript, HTML, Bootstrap, and d3 used to create a fully functioning and interactive dashboard.

## Project Description
 #### Data Cleaning and Exploration
 * Our first step in the ETL workflow was to index, parse, and remove any columns or rows that were not pertinent to our projects goals this process was done in Excel. After this step we chose to merge the two data sets into one dataset, merging was performed in PostgresSQL and the dataset was exported as a csv for simpler handling. We also used Excel to get a prelimanary feel for the data in order to better understand what if any underlying patterns existed in the data. 
 
 * The data was then cleaned again in Pythons/Pandas the purpouse of the extra cleaning step was to replace all categorical object null values with “None” and all continuous numerical null values with “0”. Doing this to the data allowed us more flexibility when analyzing the 'ailments' as some of them were empty in the original data. The same applied to the empty chemotype variables, rather than drop them from the analysis we transformed them to a zero. Neither of the tranformations to data will skew the results in any meaningful way because all we were doing was creating place holders for the orginal empty cells in the data set. 
 
  ![Screen Shot 2022-03-19 at 4 13 39 PM](https://user-images.githubusercontent.com/59430635/159137028-67e93f0d-4add-4f2a-af70-5ab076c6a0d4.png)
 
 * We also created 5 new calculated fields/columns and added them to the dataset in Python/Pandas, these calculate columns allowed us to explore some potential patterns in ratios between several variables in the data set. 
  
### Database Integration
 * Our database is hosted in PostgresSQL, to store the static data for our analysis.
    - Reading and writing operations are fast for PostgresSQL databases.
 * We have four tables in the database which can be seen in ERD below
 
 ![mmg_sql_erd pgerd](https://github.com/paulerlic/medical-marijuana-group/blob/main/Images/mmg_sql_erd.pgerd.png)

* Postgres connects to the model via psycopg2 and SQLAlchemy.
      
### Machine Learning Model 
Deep Learning Neural Network

Neural networks are a set of algorithms modeled after the human brain. They are an advanced form of machine learning that recognizes patterns and features in input data and provides a clear quantitative output. In its simplest form, a neural network contains layers of neurons, which perform individual computations. These computations are connected and weighed against one another until the neurons reach the final layer, which returns a numerical result, or an encoded categorical result.

A neural network with more than one hidden layer is known as a deep neural network. Deep neural networks function similarly to the basic neural network, with one major exception. The outputs of one hidden layer of neurons (that have been evaluated and transformed using an activation function) become the inputs to additional hidden layers of neurons. As a result, the next layer of neurons can evaluate higher order interactions between weighted variables and identify complex, nonlinear relationships across the entire dataset. These additional layers can observe and weight interactions between clusters of neurons across the entire dataset, which means they can identify and account for more information than any number of neurons in a single hidden layer.

Deep neural network models also are commonly referred to as deep learning models due to their ability to learn from example data, regardless of the complexity or data input type. Just like humans, deep learning models can identify patterns, determine severity, and adapt to changing input data from a wide variety of data sources. Compared to basic neural network models, which require a large number of neurons to identify nonlinear characteristics, deep learning models only need a few neurons across a few hidden layers to identify the same nonlinear characteristics.

![deep_nn.png](https://github.com/paulerlic/medical-marijuana-group/blob/main/Images/deep_nn.png)

We tested several different machine learning models when analyzing the data they are listed below. 
*  K-means clustering - 66.76%
*  K-means clustering with Principal Component Analysis - 51.47%
*  Random Forest Classifier - 67.96%
*  Simple Neural Network - 75.69%
*  Deep Learning Neural Network - 77.34%
*  Deep Learning Neural Network with KerasTuner optimization - 79-80%
  
Limitations of the Deep Learning Neural Network:
* Requires larger data volumes than other models
* High computational power and cost to train due to complex data models running on multiple expensive GPUs and machines
* Highly complex and esoteric given no standard theory
* DIfficult to comprehend results given black box nature 

Benefits of the Deep Learning Neural Network:
* Ability to learn independently in real-time
* The neural network is flexible and can be applied to multiple data types and current and future applications
* Features automatically deduced/optimally tuned for desired result so outputs not limited to provided inputs
* Features not required to be extracted in advance
* Data stored in neural network itself rather than a database 
* Allows for multiple parallel computations using GPUs scalable for large data volumes
* Larger data volumes actually result in enhanced performance   
* Produces output regardless of fault/error detection with model/data

### Communication Protocols
* Create direct messages for only team members in dedicated medical-marijuana-group Slack channel
* Weekly meetings Tuesday/Thursday during class and Friday/Sunday afternoons 
* Emergency contact information (email/mobile) provided by each team member
* Emergency contact Jemi Shieh 24/7 by Slack/email/text/call as needed
* Periodic zoom calls for short group review sessions

### Dashboard Blueprint

https://docs.google.com/presentation/d/1D_68ffRjq-3gRIabL9SGe-Tsh35xAHHXCnpitS0V9DY/edit#slide=id.g11d7d2e999a_0_143

#### Tools used to create the final dashboard
* Tableau, JavaScript, HTML, Bootstrap, d3

#### Description of interactive elements
* All Tableau visualizations include interactive legend filters, to sort the data and explore different patterns we found in the medical marijuana data.
* Map and Strain Selector also include interactive search filters, we included a map of states in the United States: 
* 
![Map](https://raw.githubusercontent.com/paulerlic/medical-marijuana-group/Laup/Imgs/US_legal_map.PNG)

* Web app includes interactive search filter:

![Webapp](https://raw.githubusercontent.com/paulerlic/medical-marijuana-group/mmg-s1-js-database/Images/Screenshot%20(89).png)
* Bubble Chart exploring chemotype and THC to CBD ratio:

<div class='tableauPlaceholder' id='viz1647836665224' style='position: relative'><noscript><a href='#'><img alt='CHEMOTYPE_CBD_THC-RATIO_BUBBLESBubble Size = Chemo Type 1-3THC to CBD Ratio = Color ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;MM&#47;MMGP&#47;CHEMOTYPE_CBD_THC-RATIO_BUBBLES&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='MMGP&#47;CHEMOTYPE_CBD_THC-RATIO_BUBBLES' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;MM&#47;MMGP&#47;CHEMOTYPE_CBD_THC-RATIO_BUBBLES&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /><param name='filter' value='publish=yes' /></object></div>

#### Dashboard Reference links
https://public.tableau.com/app/profile/paul4991/viz/MMGP/CHEMOTYPE_CBD_THC-RATIO_BUBBLES?publish=yes
https://public.tableau.com/app/profile/david8025/viz/Medicialstrains/Story1
