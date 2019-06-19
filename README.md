# Microsoft-SSIS---ETL-Pipeline
A ETL Pipeline of New york city property sales dataset using Microsoft SSIS (Integration services)

Hi, 

This is my ETL(Extract, Transform, Load Data) pipeline using Microsoft SSIS Project in Visual studio on a NYC proper sales dataset from Kaggle. https://www.kaggle.com/new-york-city/nyc-property-sales

Steps used : 
1. Create a star or snow flake schema in microsoft sql server by analysing the dataset.i.e create dimension tables and fact tables
2. Go to Visual studio and create a integration services project ( Supposedly you have install SSIS on your Microsoft tool )
3. Start creating control flow as follows: 
    
    Control flow I created :- 
    1. Empty data from tables 
    2. Load data into dimension tables 
    3. Load data into Fact tables 
    4. Export data to a data source
    
    And there you are with your ETL pipeline for your datasets. Hope you liked it. I have also provided sql code. 
    
Thanks and regards,
Shubham Kumar 
