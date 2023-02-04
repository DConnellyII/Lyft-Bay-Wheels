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
Bay Wheels is a bike-sharing initiative backed by the rideshare provider Lyft in California. Many highly populated areas have turned to alternate sources of transportation to help the general public who may not have the means of acquiring their own. It could also be a viable solution to local residents who don't live far away from destinations they frequent. I wanted to work with this data because I was interested in seeing how Bay Wheels was being utilized the year before the pandemic. Although there have already been changes to several of the bike station locations as of 2023, some being permanently closed, this type of analysis could help city officials looking to publicize and improve the program.

<a name="source"></a>
## Data Source: :books:
This is an anonymized trips dataset of Lyft bike sharing system (Bay Wheels), in the Bay Area of California from January 2019 to May 2019. This data was created with information obtained from the [Lyft bike sharing site](https://www.lyft.com/bikes/bay-wheels). I used all 5 of the CSV's for my analysis.

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
The data was provided in 5 separate CSV's so I started by combining them all into 1 CSV.

![ETL01](images/etl_images/etl_01.png)

I then [checked the shape of the original date](https://github.com/DConnellyII/lyft_bay_wheels/blob/main/images/etl_images/etl_02.png) to see how many rows and columns I would be working with. From there, I [checked the name of the columns](https://github.com/DConnellyII/lyft_bay_wheels/blob/main/images/etl_images/etl_03.png) because I needed to [rename some data](https://github.com/DConnellyII/lyft_bay_wheels/blob/main/images/etl_images/etl_04.png) for accuracy.

I also [checked for any null values](https://github.com/DConnellyII/lyft_bay_wheels/blob/main/images/etl_images/etl_05.png) in the dataset to determine if it was worth having them or if they could be dropped to improve the analysis. There were 745 start and end stations that were missing. I assume these may be bikes that were used but never docked so it didn't allow for any information to be recorded. There were also 49,376 birth years and 49,370 genders that were not recorded. This could be that the users didn't want to record any personal information of themselves. Being that it was around 5% of the data, I decided to [drop the null data](https://github.com/DConnellyII/lyft_bay_wheels/blob/main/images/etl_images/etl_06.png).

Then, I [verified and changed a few datatypes](https://github.com/DConnellyII/lyft_bay_wheels/blob/main/images/etl_images/etl_07.png) and once the data checked out, I exported the merged data into a single CSV.

![ETL08](images/etl_images/etl_08.png)

After that, I went into my CSV to rearrange my columns to have better clarity of my information. I also added [new columns](txt/bay_wheels_summary_format.txt) to include city, state, latitude and longitude information for the start and end stations to include them on a static map in Tableau.

Initially, I started researching the [Bay Wheels map](https://account.baywheels.com/map) to try and get location information for each of the stations while working within the cleaned CSV file in Excel to add the new data. I soon realized that it would be time consuming because of the amount of information I needed to include and the Lyft website had several hang ups during my research. It also could present the opportunity for hidden [inaccuracies](https://github.com/DConnellyII/lyft_bay_wheels/blob/main/images/sql_images/sql_01.png) if I continued this way.

I decided to change a few things to hopefully alleviate those issues. I began looking up the start and end stations on Google Maps and [updating](images/sql_images/sql_03.png) my data with SQL. Google Maps provided me with correct city information as well as the opportunity to collect the latitude and longitude. I then updated the information through SQL.

![SQL04](images/sql_images/sql_04.png)



Originally, I was working with all of the data from each city (Berkeley, Emeryville, Oakland, San Francisco, San Jose).