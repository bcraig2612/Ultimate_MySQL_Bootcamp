*Section: 13 Many to Many*
--Imagine we're building a  tv show reviewing application--
--SERIES DATA <---> REVIEWS DATA <---> REVIEWERS DATA
*SCHEMA:*
--SERIES: id, title, released_year, genre
--REVIEWS: id, rating, series_id, reviewer_id
--REVIEWERS: id, first_name, last_name