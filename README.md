This project analyzes a dataset of approximately 500 restaurants to understand how pricing, customer ratings, popularity, and service convenience influence restaurant performance and perceived value.

Rather than relying on simple averages, the analysis focuses on distributional behavior, relative value, and rating reliability, providing insights that are more meaningful for business decision‑making.

* Tools & Technologies

BigQuery (SQL) – Data cleaning and preparation
Python (Pandas, NumPy, Seaborn) – Feature engineering and exploratory data analysis
Tableau Public – Interactive dashboard and visualization
Git & GitHub – Version control and documentation

* Data Cleaning (SQL – BigQuery)

Converting boolean service indicators into binary flags
Standardizing city names to remove duplicates
Identifying and handling invalid values in cost and vote columns
Creating a clean, analysis‑ready table for downstream use in Python

* Feature Engineering (Python)

-> Imputed Average Cost for Two
Invalid or zero costs were replaced using the median cost within each price range.
-> Value‑for‑Money Score
Ratio of rating to imputed cost to measure relative value.
-> Value Percentile
Percentile ranking of value‑for‑money to enable fair comparison across restaurants.
-> Weighted Rating
IMDb‑style weighted rating that accounts for vote volume and reduces small‑sample bias.
-> Convenience Score
Composite score based on service availability (table booking, online delivery, active delivery).
-> Log‑Transformed Votes (log1p)
Applied to reduce skew and improve rating reliability analysis.

* Exploratory Data Analysis (EDA)

+ Higher price categories tend to have slightly higher ratings, but differences overlap significantly.
+ Budget and Moderate restaurants generally provide better value‑for‑money.
+ Ratings are highly variable for restaurants with few votes and stabilize as vote counts increase.
+ Convenience features are associated with higher and more consistent ratings.
+ Premium restaurants show lower median value but include a small number of standout performers.

* Dashboard Features

+ Rating distribution by price category (box plots)
+ Value‑for‑money comparison across price ranges
+ Impact of convenience on ratings
+ Popularity vs rating reliability using log‑scaled votes
+ Top 10 restaurants ranked by value‑for‑money percentile

Tableau Dashboard link: https://public.tableau.com/views/RestaurantPricingValueandPerformanceAnalysis/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

* Key Insights
- Higher prices do not guarantee better customer value.
- Budget restaurants often deliver strong value but with higher variability.
- Premium restaurants are more polarized, with a few exceptional performers.
- Rating reliability improves significantly as the number of reviews increases.
- Offering convenience features positively influences customer satisfaction.

Author
Divyesh Bhavsar
Data Analyst | SQL | Python | Tableau



