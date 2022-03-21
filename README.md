# Medical Marijuana Group Final Project

![download](https://user-images.githubusercontent.com/59430635/159196712-e7aa3de9-7247-4aff-82d1-4e2ebc7d5c1c.gif)


### Selected Topic
Medical Marijuana "Picking The Right Strain"

#### Reason for choosing this Topic:
In the years since the legalization of medicinal cannabis , thier has been an uptick in the minds of patients opting out from Doctor prescribe mediciton to different strains of cannabis to treat their aliments. As many patients have never had a prior history with consuming cannabis.Many who are trying for the first time , should know what strains is best fit for themselves and the effects that a certain type of strain has to their aliments.

### Questions we hope to answer:
  1. Can we create a Neural Network that can identify patterns in Strains?
  2. Can we match Aliments correctly to Effects?

#### Null Hypothesis: Do Sativa ,Indicia and Hybird indivdual strains lineup with certain Effects that are bested suited for the treamtent of specific aliments.

#### Alternate Hypothesis: There is no relationship between individual strains and their effects.
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
Then store the data as a variable in our case we used Kushy_washingto_cleaned_df, then closed the cursor connection so we can save bandwidth.Dropping non-beneficial identification columns in the dataframe.Use labelencoder to encode target ailment_1 column and check datatype which than convert vector of integers to one hot encoding using keras function to_categorical
*Use get_dummies() to encode object columns
*Split preprocessed data into features and target arrays
*Split preprocessed data into training and testing datasets
  


## Communication Protocols
* Create direct messages for only team members in dedicated medical-marijuana-group Slack channel
* Weekly meetings Tuesday/Thursday during class and Friday/Sunday afternoons 
* Emergency contact information (email/mobile) provided by each team member
* Emergency contact Jemi Shieh 24/7 by Slack/email/text/call as needed





### Dashboard (0 points)
There are no deliverables associated with the dashboard for this segment.
