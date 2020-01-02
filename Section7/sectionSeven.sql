-- Problem #1:
-- Reverse and Uppercase the following sentence
-- "Why does my cat look at me with such hatred?"

Answer: SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));
Answer: SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?'));
-- Problem #2:
-- What does this print out?
SELECT
  REPLACE
  (
  CONCAT('I', ' ', 'like', ' ', 'cats'),
  ' ',
  '-'
  );

Answer: I-like-cats
-- Problem #3:
-- Replace spaces in titles with '->'

Answer: SELECT REPLACE(title, ' ', '->') AS title FROM books;

-- Problem #4:
-- Print this out
| forwards       | backwards      |
+----------------+----------------+
| Lahiri         | irihaL         |
| Gaiman         | namiaG         |
| Gaiman         | namiaG         |
| Lahiri         | irihaL         |
| Eggers         | sreggE         |
| Eggers         | sreggE         |
| Chabon         | nobahC         |
| Smith          | htimS          |
| Eggers         | sreggE         |
| Gaiman         | namiaG         |
| Carver         | revraC         |
| Carver         | revraC         |
| DeLillo        | olliLeD        |
| Steinbeck      | kcebnietS      |
| Foster Wallace | ecallaW retsoF |
| Foster Wallace | ecallaW retsoF |
| Smith          | htimS          |

Answer: SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;

-- Problem #5:
--  NOW DO THIS!
| full name in caps    |
+----------------------+
| JHUMPA LAHIRI        |
| NEIL GAIMAN          |
| NEIL GAIMAN          |
| JHUMPA LAHIRI        |
| DAVE EGGERS          |
| DAVE EGGERS          |
| MICHAEL CHABON       |
| PATTI SMITH          |
| DAVE EGGERS          |
| NEIL GAIMAN          |
| RAYMOND CARVER       |
| RAYMOND CARVER       |
| DON DELILLO          |
| JOHN STEINBECK       |
| DAVID FOSTER WALLACE |
| DAVID FOSTER WALLACE |
| ADAM SMITH           |

Answer: SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;

-- Problem #6:
-- MAKE THIS HAPPEN!

-- | blurb                                                                    |
-- +--------------------------------------------------------------------------+
-- | The Namesake was released in 2003                                        |
-- | Norse Mythology was released in 2016                                     |
-- | American Gods was released in 2001                                       |
-- | Interpreter of Maladies was released in 1996                             |
-- | A Hologram for the King: A Novel was released in 2012                    |
-- | The Circle was released in 2013                                          |
-- | The Amazing Adventures of Kavalier & Clay was released in 2000           |
-- | Just Kids was released in 2010                                           |
-- | A Heartbreaking Work of Staggering Genius: was released in 2001          |
-- | Coraline was released in 2003                                            |
-- | What We Talk About When We Talk About Love: Stories was released in 1981 |
-- | Where I'm Calling From: Selected Stories was released in 1989            |
-- | White Noise was released in 1985                                         |
-- | Cannery Row was released in 1945                                         |
-- | Oblivion: Stories was released in 2004                                   |
-- | Consider the Lobster was released in 2005                                |

Answer: SELECT CONCAT(title, ' was released in ', released_year) AS blurb FROM books;

-- Problem #7:
-- Print book titles and the length of each title

Answer: SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

-- Problem #8:
-- Last one, I promise!
+---------------+-------------+--------------+
| short title   | author      | quantity     |
+---------------+-------------+--------------+
| American G... | Gaiman,Neil | 12 in stock  |
| A Heartbre... | Eggers,Dave | 104 in stock |
+---------------+-------------+--------------+

Answer: SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title', CONCAT(author_lname, ',', author_fname) AS author, CONCAT(stock_quantity, ' in stock') AS quantity FROM books;