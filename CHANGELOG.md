# Changelog
All notable changes to this project are documented in this file.

The project follows a structured data pipeline:
BigQuery (SQL cleaning) → Python (feature engineering) → Analysis.


## [v1.0.0] – Initial Data Ingestion
**Date:** 2026-01-06

### Added
- Loaded raw restaurant dataset into BigQuery.
- Created base schema for restaurant data.
- Verified row counts and column integrity.



## [v1.1.0] – SQL Data Cleaning Pipeline
**Date:** 2026-01-06

### Added
- SQL-based data cleaning pipeline in BigQuery.
- Standardized boolean columns:
  - `Tab_book`, `Online_Del`, `Now_Del`, `Order_Menu`
  - Converted TRUE/FALSE values to binary (1/0).
- Created cleaned BigQuery table for downstream analysis.

### Changed
- Standardized city names to remove duplicates and inconsistencies.
- Removed rows with invalid vote counts.
- Changed Null values of cuisines to "Not Specified"

### Removed
- Dropped non-analytical columns not required for analysis.



## [v1.2.0] – Cost Data Validation & Imputation
**Date:** 2026-01-07

### Added
- Identified invalid `AC_of_Two` values (zero or negative).
- Created binary flag `AC_of_Two_zflag` to track invalid cost rows.
- Implemented cost imputation using median cost per `price_range`.

### Changed
- Preserved original Avg cost of Two values while creating `avg_cost_imputed` column.
- Ensured no zero or negative values remain in analysis-ready cost column.

### Notes
- Approximately 18 rows (~3–4% of dataset) required cost imputation.
- Avg cost of Two == cost

---

## [v1.3.0] – Python Feature Engineering
**Date:** 2026-01-07 to 2026-01-08

### Added
- Value-for-money metric:
  - `value_for_money = rating / avg_cost_imputed`
- Normalized value metric using percentile ranking:
  - `value_percentile`
- Weighted rating feature:
  - Accounts for vote volume and global rating mean.
- Convenience score combining service features:
  - Table booking, online delivery, and active delivery status.
- City Average ranking based on weighted_rating.
- Added Log1p votes values for checking the average distribution.

### Changed
- Replaced raw cost values with imputed cost for analytical features.
- Ensured all engineered features are numerically stable (no inf or NaN).

### Validated
- Verified percentile distribution is centered around 0.5.
- Confirmed weighted ratings reduce small-sample bias.
- Ensured feature distributions align with business expectations.

---

## [Unreleased]
### Planned
- Exploratory data analysis (EDA).
- Visualization of pricing, value, and rating patterns.
- Insight generation and storytelling.