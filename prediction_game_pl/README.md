
![alt text](https://images.unsplash.com/photo-1574629810360-7efbbe195018?q=80&w=2586&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)


# ⚽ Football Match Outcome Prediction with RandomForest

## 🧠 Project Overview

This project aims to predict football match outcomes using machine learning, specifically a **RandomForestClassifier**. The dataset contains detailed match statistics for **Premier League** games from multiple seasons.

---

## 📊 Dataset Description

The dataset (`matches.csv`) contains **1389 rows** and **27 columns**, including:

- Match details: `date`, `time`, `competition`, `round`, `day`, `venue` (home/away), `result`, `goals for (gf)`, `goals against (ga)`, `opponent`
- Match statistics: `shots`, `expected goals (xG)`, `possession`, `fouls`, `penalties`, etc.

### 🔍 Sample data snapshot:

| date       | time  | comp            | round        | day | venue | result | gf | ga | opponent      | ... | notes | sh | sot | dist | fk | pk | pkatt | season | team            |
|------------|-------|------------------|---------------|-----|--------|--------|----|----|----------------|-----|-------|----|-----|------|----|----|--------|--------|------------------|
| 2021-08-15 | 16:30 | Premier League   | Matchweek 1   | Sun | Away   | L      | 0  | 1  | Tottenham      | ... | NaN   | 18 | 4   | 16.9 | 1  | 0  | 0      | 2022   | Manchester City  |
| 2021-08-21 | 15:00 | Premier League   | Matchweek 2   | Sat | Home   | W      | 5  | 0  | Norwich City   | ... | NaN   | 16 | 4   | 17.3 | 1  | 0  | 0      | 2022   | Manchester City  |

> ⚠️ The dataset contains **missing values**, especially for **Liverpool’s 2021-2022** season matches, which were handled during data cleaning.

---

## 🧹 Data Cleaning & Preprocessing

- Converted the `date` column to datetime format.
- Removed irrelevant columns (`comp`, `notes`, and other textual descriptions).
- Encoded categorical variables (`venue`, `opponent`, `team`) into numeric codes.
- Handled missing values through careful analysis and imputation.
- Engineered new features:
  - `hour` (from `time`)
  - `day_code` (from `day of the week`)
  - Rolling averages over recent 3 matches to capture team form

---

## 🛠️ Feature Engineering

Created additional numeric features:

- `venue_code` — encoded from `venue` (home/away)
- `opp_code` — encoded from `opponent`
- `hour` — extracted from match `time`
- `day_code` — numeric encoding of the day of the week
- **Rolling averages** for key match stats over the last 3 matches (e.g., shots, goals, xG)

---

## 🤖 Modeling

- Data split chronologically:
  - **Training set**: Matches before 2022
  - **Test set**: Matches from 2022 onwards
- Model: `RandomForestClassifier` with:
  - `n_estimators=50`
  - `min_samples_split=10`
- Evaluation:
  - **Accuracy**
  - **Confusion matrix** on the test set

---

## 🚀 Deployment

- Trained model saved as `model.pkl` using **Pickle**
- Integrated into a **web application** deployed on **Hugging Face Spaces**
- Users can input match data and receive **interactive outcome predictions**

🔗 **Check out the live app here**: [Maureen9/prediction_game_pl](https://huggingface.co/spaces/Maureen9/prediction_game_pl)
