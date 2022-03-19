-- DATA EXPLORATION - show all
SELECT * FROM happinessLadder..['happiness-cantril-ladder$']
WHERE Year >= 2009
ORDER BY 1, 2


-- AVG OF Individual Countries (from happiest)
SELECT Entity, AVG([Life satisfaction in Cantril Ladder (World Happiness Report 2021]) AS DescendingAvg
FROM happinessLadder..['happiness-cantril-ladder$']
WHERE Year >= 2009
GROUP BY Entity
ORDER BY 2 DESC


-- AVG OF Individual Countries (from loneliest)
SELECT Entity, AVG([Life satisfaction in Cantril Ladder (World Happiness Report 2021]) AS AscendingAvg
FROM happinessLadder..['happiness-cantril-ladder$']
WHERE Year >= 2009
GROUP BY Entity
ORDER BY 2


-- AVG IN THE PHILIPPINES
SELECT Entity, Code, AVG([Life satisfaction in Cantril Ladder (World Happiness Report 2021]) AS AveragePH
FROM happinessLadder..['happiness-cantril-ladder$']
WHERE Entity like '%lippin%' AND Year >= 2009
GROUP BY Entity, Code
ORDER BY 1, 2


-- AVG OF ALL COUNTRIES
SELECT AVG([Life satisfaction in Cantril Ladder (World Happiness Report 2021]) AS WorldAverage
FROM happinessLadder..['happiness-cantril-ladder$']
WHERE Year >= 2009


/*
CREATE DASHBOARDS
Top 10 happiest, top 10 loneliest
Timeline comparing top 3 happiest, 3 median, 3 loneliest
*/