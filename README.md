# README


Things you may want to cover:

* Ruby version 2.4.4

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# imdb_api

Requirements

Design a REST API with three endpoints:

 https://imdb-api-backend.herokuapp.com/movies 
 
 https://imdb-api-backend.herokuapp.com/shows/1 
 
 https://imdb-api-backend.herokuapp.com/search?query=lord

/movie/${id} when given the appropriate id, will yield the movie matching that identifier (more on where that id comes from shortly).
/show/${id} when given the appropriate id, will yield the show matching that identifier.
The above endpoints should contain, at minimum, the title, release year, and a synopsis of the media item being displayed.
/search when given a `?query=${some title}`, will yield any movies or shows matching that title, returning a JSON of matching titles, the years the media items were released, and whether each media item is a movie or a show. These results should be paginated.



