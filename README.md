# team1_etl_project
Team 1 ETL project - Maria Lara, Deepika Awasthi, &amp; Erik Lockwood


### Download the CSV files

1. CSV files from kaggle link 
https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset?select=IMDb+title_principals.csv

•	IMBD Movies.csv
•	IMBD Names.csv
•	IMBD Ratings.csv

2. CSV files from data world link
https://data.world/data-society/imdb-5000-movie-dataset/workspace/file?filename=movie_metadata.csv

•	movie_metadata.csv

3. CSV files from following link
https://www.kaggle.com/ruchi798/movies-on-netflix-prime-video-hulu-and-disney

•	MoviesOnStreamingPlatforms_updated.csv

Steps to follow -

1) Create a database in postgres. The name of database should be "etl_project"
2) run "etl_postgres_schema.sql" to create all tables
3) Create a folder "etl_project_data" and save all csv files in that folder

Please run the notebooks in following sequence

1) Run "etl_movies.ipynb" to load movie table
2) Run "etl_actor.ipynb" to load actor and movie_actor table
3) Run "etl_director.ipynb" to load director and movie_drt table
4) Run "etl_genre.ipynb" to load genre and movie_genre table
5) Run "etl_country_language_rating.ipynb" to load country, language, rating and other subsequent tables

Following are more documents to refer  -

1) etl_postgres_erd - Consists of ERD showing up relationship between various tables

2) ETL Project Final Report.docx is the project report