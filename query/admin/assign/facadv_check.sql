SELECT "FACULTY_ADVISOR" FROM "STUDENT" WHERE "DEPARTMENT"=$1 AND "SECTION"=$2 AND "Batch"=$3
AND "RRN" = ANY($4::varchar[])
UNION
SELECT "FACULTY_ADVISOR_BATCH" FROM "FACULTY" WHERE "FACULTY_ID"=$5;
--1ST STEP GETTING THE LIST OF STUDENTS AND SEE IF THEY HAVE A FACULTY ADVISOR
--IF NO, THEN RUN ASSIGN_NEW_FACADV.SQL
--IF THEY ALREADY HAVE FACULTY ADVISOR, THEN THROW ERROR SAYING THEY ARE ALREADY ASSIGNED