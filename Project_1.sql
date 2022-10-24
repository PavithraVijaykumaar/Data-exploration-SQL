-- DISPLAYING ENTIRE NETFLIX DATASET
select * from netflix_dataset

--SELECTING THE TYPE OF CONTENT UPLOADED IN NETFLIX
select type as Type from netflix_dataset group by type

--DISPLAYING ALL MOVIES RELEASED IN NETFLIX
select type as Type,title,release_year from netflix_dataset where type='Movie' order by release_year asc

--DISPLAYING ALL TV SERIES RELEASED IN NETFLIX
select type as Type,title as Title,release_year as Release from netflix_dataset where type='TV Show' and release_year>2020


-- SELECTING COLUMNS CONTAINING MOVIE/TVSHOW NAME,DURATION AND RELEASE YEAR
select type as Category,title as Title,Duration,release_year as Release from netflix_dataset

--DISPLAYING ONLY TV SHOWS ALONG WITH NAME,RELEASE YEAR AND NUMBER OF SEASONS
-- ARRANGING THE DATA YEAR WISE
select type as Category,title,release_year as Release,duration as Seasons from netflix_dataset where type='TV Show' order by release_year asc


-- DISPLAYING ONLY THE MOVES ALONG WITH NAME,RELEASE YEAR AND ARRANGE THEM RELEASE YEAR WISE
select type as Category,title as Title,release_year as Release,duration as Duration from netflix_dataset where type='Movie' order by release_year asc

--DISPLAYING MOVIE RELEASED DURING PANDEMIC TIME
select type as Category,title as Title,release_year as Release from netflix_dataset where release_year >=2020 and type='Movie'

--DISPLYING THE TOTTAL NUMBER OF TV SHOWS AVAILABLE IN NETFLIX
select count(type) as Type1 from netflix_dataset where type='TV Show'

--DISPLAYING THE TOTAL NUMBER OF MOVIES AVAILABLE IN NETFLIX
select count(type) as Type2 from netflix_dataset where type='Movie'