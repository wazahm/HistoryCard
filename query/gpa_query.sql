--SELECT "SEM_TAKEN","GPA" from "GPA" where "RRN"=$1;

SELECT "SEM_TAKEN" ,ROUND(SUM("CREDITS"*"POINTS")/SUM("CREDITS"),1) AS "GPA"
FROM "COURSE" INNER JOIN "INTERNALS" USING("RRN","SUBJECT_CODE","SEM_TAKEN")
INNER JOIN "SUBJECT" USING ("SUBJECT_CODE")
INNER JOIN "MARK_SCHEME" USING("GRADE")
WHERE "RRN"=$1 GROUP BY "SEM_TAKEN";