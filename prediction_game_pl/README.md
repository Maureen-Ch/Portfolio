
![alt text](https://images.unsplash.com/photo-1574629810360-7efbbe195018?q=80&w=2586&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)


Football Match Outcome Prediction with RandomForest
Project Overview

This project aims to predict football match outcomes using machine learning, specifically a RandomForest classifier. The dataset contains detailed match statistics for Premier League games from multiple seasons.

Dataset Description

The dataset (matches.csv) contains 1389 rows and 27 columns, including match date, time, competition, round, day of the week, venue (home/away), result, goals for and against, opponent team, and various match statistics (shots, expected goals, possession, fouls, penalties, etc.).

Sample data snapshot:

date	time	comp	round	day	venue	result	gf	ga	opponent	...	notes	sh	sot	dist	fk	pk	pkatt	season	team
2021-08-15	16:30	Premier League	Matchweek 1	Sun	Away	L	0	1	Tottenham	...	NaN	18	4	16.9	1	0	0	2022	Manchester City
2021-08-21	15:00	Premier League	Matchweek 2	Sat	Home	W	5	0	Norwich City	...	NaN	16	4	17.3	1	0	0	2022	Manchester City

The dataset contains missing values, especially for Liverpool’s 2021-2022 season matches, which are accounted for during data cleaning.

Data Cleaning & Preprocessing

The date column was converted to datetime format for easier handling.

Columns irrelevant to the model (such as comp, notes, and text-based reports) were removed or ignored.

Categorical variables like venue, opponent, and team were encoded into numeric codes for model compatibility.

Missing values were carefully analyzed and handled to ensure data quality.

Additional features such as match hour (extracted from time), day of the week, and rolling averages over recent matches were engineered to improve predictive power.

Feature Engineering

Created new numeric features from existing columns:

venue_code from venue (home/away)

opp_code from opponent

hour from time

day_code from day of the week

Calculated rolling averages for key stats over previous 3 matches to capture recent team form.

Modeling

Data was split chronologically into training (before 2022) and testing (2022 onwards) sets.

A RandomForestClassifier was trained with 50 estimators and minimum 10 samples per split.

Model performance was evaluated via accuracy and confusion matrix on the test set.

Deployment

The trained model was saved as a pickle file (model.pkl) to facilitate reuse.

This pickle file is used in a web application deployed on Hugging Face Spaces, allowing users to input match data and get outcome predictions interactively.

Check out the live app here: Maureen9/prediction_game_pl