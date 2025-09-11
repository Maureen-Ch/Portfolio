
![alt text](https://www.google.com/imgres?q=nyc%20city%20bike&imgurl=https%3A%2F%2Fimages.ctfassets.net%2Fp6ae3zqfb1e3%2F5b6TOvTnqzRE6hUpe9pcPu%2F97a29a21836cba7e89db4e632d7f45dd%2FCiti_Bike_Landing_page_Hero_3x.jpg&imgrefurl=https%3A%2F%2Fcitibikenyc.com%2F&docid=4EKvsDraQ6Q3jM&tbnid=U0VtPWXxMYlrAM&vet=12ahUKEwjdrqfcrtCPAxUQMfsDHe9UN00QM3oECBcQAA..i&w=2137&h=1194&hcb=2&ved=2ahUKEwjdrqfcrtCPAxUQMfsDHe9UN00QM3oECBcQAA)


# NYC City Bike Trip Analysis

This project presents an exploratory data analysis of City Bike trips in 
New York City on October 1st, 2013. Using a dataset of over 40,000 
records, the goal is to uncover user behavior patterns, analyze trip 
durations, and visualize the most active start stations.

---

## 🎯 Objectives

- Clean and explore the dataset
- Analyze trip duration and usage by hour and user type
- Determine what percentage of users are subscribers
- Identify the most frequently used start stations
- Visualize station popularity using an interactive map

---

## 🛠️ Tools & Technologies

- **Python**: data manipulation with `pandas`, numerical operations with 
`NumPy`
- **Data Visualization**: `seaborn`, `matplotlib`, `folium`
- **Notebook**: Jupyter Notebook (Google Colab compatible)

---

## 📈 Key Findings

- **92.03%** of trips were made by annual subscribers
- Trip durations tend to be longer during **7am–12pm** and **5pm–8pm**
- **Subscribers** take longer trips than non-subscribers on average
- The most active start stations are located in **Manhattan**, including:
  - W 17 St & 8 Ave
  - W 45 St & 8 Ave
  - E 43 St & 2 Ave

---

## 🗺️ Interactive Map

Using `folium`, an interactive map was created to visualize the most 
popular start stations by volume. Each circle's radius is proportional to 
the number of trips starting from that station.

---

## 📂 Repository Contents

- `NYC_City_Bike_Trip.ipynb`: Main notebook with code, visualizations, and 
comments
- `README.md`: This file

---

## ▶️ How to Run

1. Clone the repository
2. Open the notebook in Jupyter or [Google 
Colab](https://colab.research.google.com/)
3. Run all cells to reproduce the analysis and map

---

## 💼 What this project demonstrates

- Real-world data cleaning and transformation
- Exploratory data analysis techniques
- Data visualization for insights
- Use of mapping libraries to enrich data storytelling

---

This project was created as part of a personal data portfolio to 
demonstrate analytical and technical skills on real-world datasets.

