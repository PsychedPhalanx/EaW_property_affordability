# England and Wales Housing Affordability Analysis (1997-2024)
Analysing the inflation-adjusted relationship between property prices and salaries across England and Wales between 1997 and 2024.
## Background
The UK housing market has undergone significant change since 1997, with property prices rising substantially faster than wages. This project aims to quantify the extent of this divergence by analysing the relationship between property prices and workplace-based earnings at the local authority and regional level, over a period of 27 years.
## Aims
This analysis addresses four, key questions:
- To what extent have property prices outpaced salary growth?
- How have major economic events, e.g., the 2008 financial crisis, the Brexit referendum, COVID-19 pandemic, etc., affected housing affordability?
- Which local authorities and regions show the greatest disparities between prices and earnings?
- What impact have new property developments had on affordability?
## Key Findings
- The England and Wales-wide average property price has **increased by over 133%** since 1997
- Three distinct phases of property price movement: consistent growth (1997-2007), crisis-induced stagnation (2008-2016), and volatility from Brexit through COVID-19 boom to inflation correction (2016-2024)
- Meanwhile, the average salary has only **increased by 14.5%** since 1997
- By 2015, average property prices exceeded their 2007 peak, while salaries are still (2024) yet to recover to their pre financial crises peak.
## Data Sources
1. **Property Transactions:** [HM Land Registry Price Paid Data](https://www.gov.uk/government/statistical-data-sets/price-paid-data-downloads) - 24M+ records of property transactions listed with the HM Land Registry between 1995 and 2025.
2. **Workplace-Based Earnings:** [ONS House Price to Workplace-Based Earnings Ratio](https://www.ons.gov.uk/peoplepopulationandcommunity/housing/datasets/ratioofhousepricetoworkplacebasedearningslowerquartileandmedian) - Local Authority-level aggregated data containing both salary and property price data from 1997 to 2024, from which only salary data was used.
3. **Inflation Data:** [ONS CPI Index (2015=100)](https://www.ons.gov.uk/economy/inflationandpriceindices/timeseries/d7bt/mm23) - Consumer Price Index
## Methodology
1. **Salary Data Transformation:**
   - ONS data was already pre-aggregated at the local authority level
   - Converted from wide to long format - 27 rows (one per year) per local authority.
2. **Property Transaction Processing:**
   - Extracted the local authority and year from each of the 24+ million transactions
   - Grouped transactions by:
     - Local Authority
     - Year
     - Property Type (Detached, Semi-detached, Terraced, Flat/Maisonette, Other)
     - Build Status (New or Old)
    - Calculated median property prices for each combination
3. **Inflation Adjustment**
   - Modified original CPI data (2015=100) to use 2024 as the base year (2024=100)
   - Recalculated historical salary and property prices relative to 2024
4. **Combining Datasets:**
   - Joined median property prices with salary data on local authority and year
   - Final dataset: 27 years × 319 local authorities × 5 property types × 2 build statuses
5. **Analysis & Visualisation:**
   - Calculated price-to-salary affordability ratios per local authority and region
   - Calculated new build premiums per property type
   - Built an interactive dashboard with geographic and temporal filtering
## Tools Used
- PostgreSQL
- Tableau Public
## Repository Structure
```
├── data/
│   ├── processed/
│   │   └── final_data.csv*
│   ├── raw/
│   │   ├── CPI.xlsx
│   │   └── median_gross_salary.xlsx
│   └── shapefiles/
│       └── LAD_MAY_2023_EW_BUC_BESPOKE.shp
├── sql/
│   ├── 01_create_salary_table.sql
│   ├── 02_populate_salary_table.sql
│   ├── 03_wide_to_long_conversion.sql
│   ├── 04_create_and_populate_price_paid_table.sql
│   ├── 05_create_and_populate_inflation_table.sql
│   └── 06_final_query.sql
├── tableau/
│   └── EaW Housing Affordability.twbx
└── README.md
```

*Note: final_data.csv is the pre-processed data ready for visualisation. Raw data includes CPI and salary data. The Price Paid data is not included due to the size (4.9GB) - download from HM Land Registry.
