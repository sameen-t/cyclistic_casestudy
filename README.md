# cyclistic_casestudy
**Introduction** <br/>
In this case study I will be taking on the role of a junior data analyst at an imagined bike-share company called Cyclistic. The purpose of my role is to utilize raw data provided by Cyclistic to answer key business questions that will inform and guide marketing strategy. Throughout this project, I will be following the guiding steps of the data analysis process: ask, prepare, process, analyze, share, and act. <br/><br/>

**Scenario**<br/>
Cyclistic is bike-share company that was established in Chicago in 2016. They offer over 5000 bikes that are geo-tracked and can be docked into any of the 692 bike stations established throughout Chicago. Customers can either purchase a single day or full day pass as ‘casual members’, or they can subscribe to an annual membership to become a Cyclistic ‘member’. Cyclistic sets itself apart by offering more inclusive options for riders with disabilities. However, the majority of riders (a whopping 92%) opt for the traditional bikes.<br/> 

Recently, Cyclistic’s financial analysts have determined annual members are more profitable than casual members. Based on this information, Lily Moreno, the director of marketing has set a goal to convert casual riders to annual members in order to maximize profits within the already established customer base. <br/>
 
In order to meet this goal, the marketing team needs data to understand how annual members and casual members differ, why casual riders would buy a membership, and how digital media can affect marketing strategies. To do this, they have enlisted the help of my data analyst team to identify trends in Cyclistic historical bike trip data to inform their marketing strategies. Our task will be to provide meaningful data that can answer the marketing teams questions and guide them towards their goals. <br/><br/>
**Ask**<br/>
We are trying to figure out how annual Cyclistic members differ from casual riders, so that we can have a deeper insight on how to convert casual riders to annual members – a more profitable customer base. Our key stakeholders are Lily Moreno – the director of marketing and our Cyclistic Executive Team who will decide whether or not to approve the recommended marketing program. <br/>
**Business Task**: Determine what factors set casual riders apart from annual members, and how we can utilize those factors to develop a marketing strategy that will encourage casual riders to become annual members. <br/>
**Analysis Questions**
1.	How do annual members and casual riders use Cyclistic differently?<br/>
2.	Why would casual riders buy an annual membership?<br/>
3.	How can Cyclistic use digital media to influence casual riders to become members?<br/>

**Prepare** <br/>

For my analysis I will be using Cyclistics historical public data that can be found [here]((https://divvy-tripdata.s3.amazonaws.com/index.html). This is public qualitative, structured data, and has been made available under this Data License Agreement. For my analysis I will be looking at data from January 2022 to December 2022 to identify trends. I downloaded the 12csv files and uploaded them to a dataset in BigQuery.  <br/>

This is internal, primary data from Cyclistic. The data is organized in thirteen columns: 
1.	ride_id <br/>
2.	rideable_type <br/>
3.	started_at<br/>
4.	ended_at<br/>
5.	start_station_name<br/>
6.	start_station_id<br/>
7.	end_station_name<br/>
8.	end_station_id<br/>
9.	start_lat<br/>
10.	start_long<br/>
11.	end_lat<br/>
12.	end_long<br/>
13.	member_casual<br/>
Every row corresponds with a unique ride which is identified by ‘ride_id’<br/>
No biases or credibility issues were identified in this data. This data is publically made available from its primary source. Personal identifiable information (PII) such as the users name and credit card information is not made available in this data in order to protect the privacy and safety of the users. Upon exploration of the data, there is evidence of missing fields in some of the columns. This will be explored further in the processing of our data. 



 

