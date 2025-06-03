# England and Wales Housing Affordability Analysis (1997-2024)
Analysing the inflation-adjusted relationship between property prices and salaries across England and Wales between 1997 and 2024.
## Background
The UK housing market has undergone significant change since 1997, with property prices rising substantially faster than wages. This project aims to quantify the extent of this divergence by analysing the relationship between property prices and workplace=based earnings at the local authority and regional level, over a period of 27 years.
## Aims
This analysis addresses four, key questions:
- To what extent have property prices outpaced salary growth?
- How have major economic events, e.g., the 2008 financial crisis, the Brexit referendum, COVID-19 pandemic, etc., affected housing affordability?
- Which local authorities and regions show the greatest disparities between prices and earnings?
- What impact have new property developments had on affordability?
## Key Findings

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
5. 
