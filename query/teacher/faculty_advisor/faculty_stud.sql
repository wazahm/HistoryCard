--2ND QUERY IN HISTORY DB GETTING THE STUDENTS--------------
SELECT "RRN" as "rrn","STUDENT_NAME" as "name" FROM  "STUDENT" WHERE "FACULTY_ADVISOR"=$1;
--- AFTER THIS, RUN JOIN QUERY.SQL-------------