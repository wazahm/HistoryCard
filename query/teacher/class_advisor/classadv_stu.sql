-------2ND QUERY FOR CLASS ADVISOR IN HISTORY DATABASE TO GET THE LIST OF STUDENTS------------------
SELECT "RRN" as "rrn","STUDENT_NAME" as "name" FROM  "STUDENT" WHERE "CLASS_ADVISOR"=$1;
-------AFTER GETTING THE LIST OF STUDENTS, RUN JOIN_QUERY.SQL----------------------------