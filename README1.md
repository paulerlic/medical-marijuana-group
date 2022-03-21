# Medical Marijuana Group Final Project


### Selected Topic
Medical Marijuana "Picking The Right Strain"

#### Reason for choosing this Topic:

Marijuana has long been a controversial topic in the US, at one point in history it was perfectly legal. It was grown, sold, and consumed openly. Benjamin Franklin, Thomas Jeffereson, and James Madison to name a few had cultivated hemp in the 1700's. The marijuana crop has long been a part of the US economey and with recently passed legislation marijuana is once again becoming a part of the US economey. Cannabis has long been known to have medicinal qualities going back many centuries from the Egyptians all the way to the silk road and was grown in much of Asia thousands of years ago. However only recently have scientists and medical professionals been able to quantify and measure the medicinal properties of marijuana, there are plenty well documented medical applications for Marijuana. Doctors have been prescribing medicinal marijuana to treat, depression, stress, nausea, epilepsy, seizures, glaucoma, and numerous other ailments. There have been promising developments in the field of cancer research with several studies showing that medicinal marijuana can help to alleviate certain symptoms from certain types of cancer and to help mitigate the side effects of chemotherapy. 

There is one issue however, since marijuana has been illegal for so long many patients have no first hand experience with the plant and many of them are trying it for the first time when a doctors prescribes it as a treament. The goal of this project is to see if there is a correlation between the various strains of medical marijuana and the ailments they are intended to treat. If a relationship between strain and ailment does exist then it may be possible to create an easy to use engine for medical marijuana patients to identify which strains will best treat their ailments.  

### Questions we hope to answer:
  1. Can a Neural Network be created that can identify patterns in strains?
  2. Can we correctly match a patients ailments to the effects of certain strains?

#### Null Hypothesis: Do Sativa ,Indicia and Hybird strains share a correlation with certain effects that are best suited for the treamtent of patient aliments.

    Can we find a positive correlation between the strain type and ailments, for example will strains that fall under the sativa category treat stress, and depression. Will strains that fall under the indica category treat ailments like nausea and lack of sleep?

#### Alternate Hypothesis: There is no relationship between strains and their effects.
Determine which medical marijuana strains are best suited as treatment for specific ailments by analyzing their chemical composition and characteristics such as flavor and effects.By creating a neutral network that allows us to recognize similar characterizes in strains of cannabis that would best work to help relieve a whole array of symptoms ranging from deppression, stress, pain, inflammation ,etc.. We believe that creating a netural network in which our machine can learn 

### Team
###### Square - Jemi Shieh
###### Circle -Paul Erlic
###### Triangle -David Bastien
###### X - Ashley Mayes


### Resources

Kushy Cannabis Data: https://github.com/kushyapp/cannabis-dataset/blob/master/Dataset/Strains/strains-kushy_api.2017-11-14.csv
Washington Cannabis data: https://www.nature.com/articles/s41598-018-22755-2
Harvard Dataverse Replication data: https://dataverse.harvard.edu/file.xhtml?persistentId=doi:10.7910/DVN/E8TQSD/XT7UNM&version=2.0
Cannabis Legalization map: https://data.world/sya/marijuana-laws-by-state

### Technolgy Used:

Software: Jupyter NoteBook, Python 3.7.6,Javascript,PostgresSql,Google Colab, Google Slides, Tableau.
Libaries: Sklearn, Keras,Utils,Pandas, TensorFlow, Config, Mathplotlib,Plotly Hvplot,Pathlib

## Project Description
 #### Data Cleaning and Exploration
 The Initial step is to clean the data by removing null values.
- Our data was downloaded from Github/Kushy Profile and Nature.com.
- First indexing/parsing/dropping unnecessary rows/columns.Then we merging/joining the two datasets(Kushy and Washington) in PostgresSQL.
- Then created the null values heat map to show/confirm the work.
- Replaced categorical object null values (text in ailments/effects/flavor) with None.
- Replaced continuous numerical data null values (chemotype testing measurements) with 0s.
![Screen Shot 2022-03-19 at 4 13 39 PM](https://user-images.githubusercontent.com/59430635/159137028-67e93f0d-4add-4f2a-af70-5ab076c6a0d4.png)
 
 #### Database Integration 
 We used pandas and PostgresSQL to put the csv files that we started with, and merged tables that we created into a PostgresSQL database.Once we merge the database we created our ERD.Our database is then able to interact with our machnie learning model, which allows us to make predictions and analyze our results. We choose to  use PostgresSQL because it has several characteristics that we were looking for.
 
 - Reading and writing operations are fast for PostgresSQL databases.
- SQLite is very easy to learn, additionally there is no added installation and configuration.

![mmg_sql_erd pgerd](https://user-images.githubusercontent.com/59430635/159135849-557fdfcf-56c9-47b1-aeb7-58404e5385a7.png)

### Machine Learning Model - Neural Network
##### How does a Neural Network?
  A neural network is a series of algorithms that endeavors to recognize underlying relationships in a set of data through a process that mimics the way the human brain operates.A neural network is a system that learns how to make predictions by following these steps: Taking the input data. Making a prediction. Comparing the prediction to the desired output.
- Taking the input data:
  *Connecting to PostgresSQL Database, then creating a function to take in the query and outputs a pandas dataframe by using the create_pandas_df function.
Then store the data as a variable in our case we used Kushy_washingto_cleaned_df, then closed the cursor connection so we can save bandwidth.Dropping non-beneficial identification columns in the dataframe.
  
## Machine learning model
  We used a radom forest classifier 

## Communication Protocols
* Create direct messages for only team members in dedicated medical-marijuana-group Slack channel
* Weekly meetings Tuesday/Thursday during class and Friday/Sunday afternoons 
* Emergency contact information (email/mobile) provided by each team member
* Emergency contact Jemi Shieh 24/7 by Slack/email/text/call as needed
* Periodic zoom calls for short group review sessions



### Dashboard (0 points)
We used tableu 
