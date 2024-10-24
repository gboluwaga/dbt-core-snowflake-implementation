select 
id,
imdb_id,
imdb_score,
imdb_votes,
tmdb_popularity,
tmdb_score
from {{sources('netflix_data','titles')}}