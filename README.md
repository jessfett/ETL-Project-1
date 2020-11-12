![Baseball Image](https://github.com/jessfett/ETL-Project-1/blob/main/Images/jose-morales-3k_FcShH0jY-unsplash.jpg)

# Project: MLB Payroll vs. MLB Outcomes</br></br>

The link below will take you to the google slide presenation for my ETL-Project-1 (MLB Payroll vs. MLB Outcome)</br></br>
[Project Presentation](https://docs.google.com/presentation/d/14S_7Sir97bALFzHrfzwbBoxfyIS9VENwlw5ANf3TPEw/edit?usp=sharing)

## Getting Started

Gathering Data

During our search for information, we found two separate sources including Kaggle and Data World

NBA Players statistics since 1950 https://www.kaggle.com/drgilermo/nba-players-stats
NBA team win and Players from https://data.world/jservidio/nba-team-records-and-player-stats/workspace/file?filename=Players.csv https://data.world/jservidio/nba-team-records-and-player-stats/workspace/file?filename=Seasons_Stats.csv
Putting the Data Together

After collecting the desired data from both sources, the next step was to use Jupyter Notebook to manipulate and join the data sets together into one database.

steps within the Jupyter Notebook included importing files, reading files, merging tables, changing column names, removing some columns, and changing all column names to all lower case letters in order to smoothly connect with PostgreSQL.
Importing to PostgreSQL (pgAdmin)

Once the tables were created, we finally created a Database and Table within pgAdmin and inserted each column name and its datatype.

Finally

The data was inserted from Jupyter to AWS RDS through the endpoint , created an engine, opened the table and imported the data . And the link to the website is found below . https://jacob-servidio.github.io/CWRU-2020-ETL-Project-2/

Authors

Jermaine Coleman
Jacob Servido
Ravi Patel
Roshini Jayantha
Copyright © Jermaine Coleman| Roshini Jayantha| Jacob Servido| Ravindra Patel 2020
