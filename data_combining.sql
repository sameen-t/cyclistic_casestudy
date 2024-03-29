--combine 12 months of data into one large table 
CREATE OR REPLACE TABLE cyclistic_data_2022.combined_v1 AS (
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.january_2022`
  UNION ALL
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.febuary_2022`
  UNION ALL
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.march_2022`
  UNION ALL
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.april_2022`
  UNION ALL
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.may_2022`
  UNION ALL
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.june_2022`
  UNION ALL
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.july_2022`
  UNION ALL
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.august_2022`
  UNION ALL
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.september_2022`
  UNION ALL
  SELECT*
  FROM`case-study-412103.cyclistic_data_2022.october_2022`
  UNION ALL
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.november_2022`
  UNION ALL
  SELECT*
  FROM `case-study-412103.cyclistic_data_2022.december_2022`
  )

