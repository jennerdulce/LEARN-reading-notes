# PostgresSQL

# Relational Database 
    # - Stores information in tables
    # - A table is a set of rows and columns
    # - Databases can have many tables that have relationships to each other
    # - They layout of a table is determined by a schema
# Schema - Blueprint of the database

# PostgreSQL
# Object Oriented
    # - Reddit
    # - Instagram
    # - Spotify
    # - International Space Station

# General Commands
    # psql
    # \l to see all databases
    # :q to exit environment
    # exit

# For the most part, use pgAdmin4
    # User interfance for making queries to a postgres database

# Query
    # - A request for data from a database
    # - A request for and action from a database
    # - Make Queries with SQL

# SQL - Structured Query Language
    # - Domain Specific language to communicate with relational databases

# Query Keywords:
# Select ____ From ____
    # Most basic query that we can do
    # Tells us what datasets / column headers and which table / model that data is coming from
    # SELECT * FROM country
    # SELECT name FROM country
    # SELECT name, region FROM country
# LIMIT
    # Controls the amount of data presented
    # SELECT lifeexpectancy, name
    # FROM country
    # LIMIT 5 (will present 5 instances / entries)
# WHERE
    # How we handle most of our questions using SQL
    # Find specific values
    # SELECT lifeexpectancy
    # FROM country
    # WHERE name = 'United States'
# LIKE
    # LIKE can be used in conjunction with WHERE
    # Looks for pieces of data or data sets that activate a boolean condition
    # SELECT region
    # FROM country
    # WHERE region
    # LIKE '%merica' % = Wild Card
# ORDER BY
    # Creates ascending / descending configuration
    # Sorts by ascending by default
    # SELECT lifeexpectancy
    # FROM country
    # ORDER BY lifeexpectancy DESC

# Examples
    # SELECT name, population, <-- LOOK AT THIS COMMA: AS is part of the select
    # gnp / population AS gnp_per_capita   <-- alias
    # FROM country
    # WHERE population > 1e+8;