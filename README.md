![Baseball Image](https://github.com/jessfett/ETL-Project-1/blob/main/Images/jose-morales-3k_FcShH0jY-unsplash.jpg)

# Project: MLB Payroll vs. MLB Outcomes</br></br>

The link below will take you to the google slide presenation for my ETL-Project-1 (MLB Payroll vs. MLB Outcome)</br></br>
[Project Presentation](https://docs.google.com/presentation/d/14S_7Sir97bALFzHrfzwbBoxfyIS9VENwlw5ANf3TPEw/edit?usp=sharing)

## Getting Started

### Gathering Data</br>

I found two sources that would allow me to gather the neccessary data. 

- 2019 MLB Team Payroll  - Web Scrape - [CBS Sports](https://www.cbssports.com/mlb/news/2019-mlb-opening-day-payrolls-red-sox-cubs-yankees-open-season-above-competitive-balance-tax-threshold/)</br>
- MLB Statistics Database - CSV - [Baseball Databank](https://github.com/chadwickbureau/baseballdatabank)</br>
</br></br>

### Putting the Data Together</br>

After collecting the desired data from both sources, the next step was to use Jupyter Notebook to manipulate and join the data sets together into one database.

Within the Jupyter Notebook file the transforming of data included importing CSV, reading CSV, Scraping the CBS Sports Webpage Using BeautifulSoup, merging tables, changing column names, removing some columns, and changing all column names to all lower case letters in order to smoothly connect with PostgreSQL.

### Importing to PostgreSQL (pgAdmin)

I created an ERD using http://quickdatabasediagrams.com, which can be viewed below. </br></br>

![ERD](https://github.com/jessfett/ETL-Project-1/blob/main/Images/Screen%20Shot%202020-11-11%20at%2010.13.33%20PM.png)


In pgAdmin, the individual tables were created and the subset dataframes were loaded in. This allows a user to create unique queries to compare and create subsets of data that can be used to find correlations between MLB Team Payrolls and their game statistics, outcomes, postseason accolades, and more.

### Authors

Jess Fett
