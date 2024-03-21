# Crowdfunding_ETL

Crowdfunding Data Management Project
This project involves extracting, transforming, and managing data from crowdfunding sources. Below are the instructions followed and steps taken to accomplish the tasks outlined:

Instructions Followed:
Create the Category and Subcategory DataFrames

Extracted and transformed the crowdfunding.xlsx Excel data to create category.csv and subcategory.csv.
Created DataFrames containing category and subcategory information.
Create the Campaign DataFrame

Extracted and transformed the crowdfunding.xlsx Excel data to create campaign.csv.
Created a DataFrame containing campaign information.
Create the Contacts DataFrame

Extracted and transformed contacts data from contacts.xlsx using Python dictionary methods.
Split each name column value into first and last names and placed them in new columns.
Cleaned and exported the DataFrame as contacts.csv.
Create the Crowdfunding Database

Inspected the CSV files and sketched an Entity-Relationship Diagram (ERD) using QuickDBD.
Created a table schema for each CSV file specifying data types, primary keys, foreign keys, and other constraints.
Saved the database schema as a Postgres file named crowdfunding_db_schema.sql.
Created a new Postgres database named crowdfunding_db.
Created tables in the correct order to handle foreign keys.
Verified table creation and imported each CSV file into its corresponding SQL table.

Files Included:
category.csv: Contains category information.
subcategory.csv: Contains subcategory information.
campaign.csv: Contains campaign information.
contacts.csv: Contains contact information.
crowdfunding_db_schema.sql: SQL schema for creating tables in the crowdfunding_db database.
