WITH DEL1 AS(DELETE FROM "STUDENT" WHERE "RRN"=$1)
DELETE FROM "login" WHERE "userid"=$1;