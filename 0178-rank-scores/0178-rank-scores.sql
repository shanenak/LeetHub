# Write your MySQL query statement below
SELECT
  score,
  (SELECT COUNT(DISTINCT score) FROM Scores WHERE score >= s.score) AS `rank`
FROM Scores AS s
ORDER BY score DESC