# Bay Wheels - San Francisco (2019)

![Bay Wheels Logo](images/bay_wheels.jpg)

## Table of Contents: :house_with_garden:
01. [About The Project](#about)
02. [Data Source](#source)
03. [Technologies](#tech)
04. [Approach](#approach)
05. [Extract, Transform, Load](#etl)
06. [Exploratory Data Analysis](#eda)
07. [The Dashboard](#dashboard)
08. [Going Forward](#forward)
09. [Contributor](#team)

<a name="about"></a>
## About The Project: :thinking:
Bay Wheels is a bike-sharing initiative backed by the rideshare provider Lyft. Many populated cities have turned to alternate sources of transportation to help the general public who may not have the means of acquiring their own. It could also be a viable solution to local residents who don't live far away from destinations they frequent. I wanted to work with this data to see how Bay Wheels was utilized before the pandemic.

<a name="source"></a>
## Data Source: :books:


- [Kaggle: Bay Area Bike Sharing Trips](https://www.kaggle.com/datasets/jolasa/bay-area-bike-sharing-trips)

<a name="tech"></a>
## Technologies: :building_construction::hammer_and_wrench:
- Jupyter Notebook
- Python
- Pandas
- PostgreSQL
- Tableau

<a name="approach"></a>
## Approach: :computer:
01. Identify data source
02. Collect and clean Bay Wheels data
03. Load data into PostgreSQL
04. Research and add cities and state into the data
05. Research and add latitude and longitude coordinates for start and end stations into the data
06. Visualize dashboard in Tableau

<a name="etl"></a>
## Extract, Transform, Load: :magic_wand:
The data was provided in 5 separate CSV's. I checked the shape of the original data, renamed some data for accuracy and verified and changed a few datatypes. We also checked for any null values in the dataset and dropped them. Once our data checked out, I exported the merged data into a single CSV.

![ETL01](images/etl_01.png)
![ETL02](images/etl_02.png)
![ETL03](images/etl_03.png)
![ETL04](images/etl_04.png)

<a name="eda"></a>
## Exploratory Data Analysis: :mag::bar_chart:
After being satisfied with our cleaned data, I proceeded to do data exploration. From what I wanted to achieve in the project, I quickly realized that I need latitude and longitude coordinates to be able to show my analysis on Tableau.


## The Website: :electron:
![Website](static/images/melbourne_housing_website.png)

<a name="forward"></a>
## Going Forward: :bulb:
- Visualize data to show housing price trends on a map through an application such as Tableau
- ​Scrape more recent data and see if the trends and predictions hold true
- Update the look and feel of the website to make it more user friendly
- Redefine the parameters of our models to try and fix possible overfitting

<a name="team"></a>
## Contributors: :brain:

- [Darryl Connelly II](DConnellyII.github.io)