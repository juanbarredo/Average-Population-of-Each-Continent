---------------------------------09 15 2025--------------------------------------
--just starting this new problem out which seems like it will be a bit more troublesome

--"Given the CITY and COUNTRY tables,
--query the names of all the continents 
--(COUNTRY.Continent)
--and their respective average city populations
--(CITY.Population) rounded down to the nearest integer."

--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

--for now, let me begin by querying the names of all continents.
--I think an order by will do this.

USE Population_Census;
SELECT *
	FROM CITY;

USE Population_Census;
SELECT *
	FROM COUNTRY;

--ok,
--CONTINENT is in the COUNTRY table.

USE Population_Census;
SELECT CONTINENT
	FROM COUNTRY
	ORDER BY CONTINENT ASC;

--I am having doubts about the fact the there are so many repeating continents in the result set in the query from lines 26 to 29.
--but let me.  well, how would I go about 
--"and their respective average city populations"?
--weird.
--I think I am going to have to use that weird function whose name I forget already.
--what was it?
--I used it to solve that other problem.

--maybe not because it was PERCENTILE_CONT() which I used for the medium and this problem asks for the average.
--so, probably won't work.
--but I think I need to break this problem down a bit more then.

--what is the next step
--let me add cities to the result set.

USE Population_Census;
SELECT COUNTRY.CONTINENT, CITY.NAME
	FROM COUNTRY JOIN CITY
	ON COUNTRY.CODE = CITY.COUNTRYCODE;

--So, 
--in the above query.
--I am not sure why the INNER JOIN is the right one
--or why the order COUNTRY JOIN CITY is the right one.
--it is making my head spin.
--which is good.
--I am identifying my blind spot.

--ok, 
--I did a Google search and have found that for INNER JOINS the order does not matter.
--awesome.
--amazing.
--this is very invigorating.
--specially since it was an interview question that I failed previously.

--this has been an amazing thing to learn.

--However, 
--for other JOINS it matters a lot.  Order matters a lot for other queries.
--I am not quite there yet however.
--for now I will leave it at that.

