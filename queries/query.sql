SELECT
    name,
    (
        SELECT
            r.ranking
        FROM rankings r
            INNER JOIN students s ON s.id = r.studentId
        WHERE
            r.year = 2015
            AND s.collegeId = c.id
        ORDER BY
            r.ranking ASC
        LIMIT 1
    ) AS bestRankingIn2015,
    (
        SELECT
           COUNT(*)
        FROM rankings r
            INNER JOIN students s ON s.id = r.studentId
        WHERE
            r.ranking in (1,2,3)
            AND r.year = 2015
            AND s.collegeId = c.id
    ) AS numberOfStudents
FROM
    colleges c
HAVING
    numberOfStudents > 0;