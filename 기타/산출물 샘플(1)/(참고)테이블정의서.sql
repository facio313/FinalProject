<<<<<<< HEAD
WITH COLUMN_VIEW AS (
    SELECT  A.COLUMN_ID, A.COLUMN_NAME, COMMENTS, 'N/A' NA
            , DATA_TYPE, DECODE(NULLABLE, 'N', 'No', '') NULLABLE
            , DATA_DEFAULT, DATA_LENGTH
            , A.TABLE_NAME
    FROM USER_TAB_COLS A INNER JOIN USER_COL_COMMENTS B
            ON (
                   A.TABLE_NAME = B.TABLE_NAME 
                    AND A.COLUMN_NAME = B.COLUMN_NAME
            )
), CONSTRAINT_VIEW AS (
    SELECT UCC.CONSTRAINT_NAME, UCC.TABLE_NAME, COLUMN_NAME
    , CASE WHEN CONSTRAINT_TYPE = 'P' THEN 'P.K'
        WHEN CONSTRAINT_TYPE = 'R' THEN 'F.K'
        ELSE CONSTRAINT_TYPE END
        AS CONSTRAINT_TYPE
    FROM USER_CONS_COLUMNS UCC INNER JOIN USER_CONSTRAINTS UC
        ON (
            UCC.TABLE_NAME = UC.TABLE_NAME
            AND UCC.CONSTRAINT_NAME = UC.CONSTRAINT_NAME
            AND UC.CONSTRAINT_TYPE IN ('P', 'R')
        )
), CONSTRAINT_LIST_VIEW AS (
    SELECT TABLE_NAME, COLUMN_NAME
        , LISTAGG(CONSTRAINT_TYPE, ', ') WITHIN GROUP(ORDER BY CONSTRAINT_TYPE DESC) CONSTRAINT_TYPE
    FROM CONSTRAINT_VIEW
    GROUP BY TABLE_NAME, COLUMN_NAME
)
SELECT  V1.COLUMN_ID, V1.COLUMN_NAME, COMMENTS
    , CONSTRAINT_TYPE, NULLABLE
    , DATA_TYPE, DATA_LENGTH
    , DATA_DEFAULT    
FROM COLUMN_VIEW V1 LEFT OUTER JOIN CONSTRAINT_LIST_VIEW V2
    ON ( 
        V1.TABLE_NAME = V2.TABLE_NAME
        AND V1.COLUMN_NAME = V2.COLUMN_NAME
    )
WHERE V1.TABLE_NAME = 'MEMBER'
=======
WITH COLUMN_VIEW AS (
    SELECT  A.COLUMN_ID, A.COLUMN_NAME, COMMENTS, 'N/A' NA
            , DATA_TYPE, DECODE(NULLABLE, 'N', 'No', '') NULLABLE
            , DATA_DEFAULT, DATA_LENGTH
            , A.TABLE_NAME
    FROM USER_TAB_COLS A INNER JOIN USER_COL_COMMENTS B
            ON (
                   A.TABLE_NAME = B.TABLE_NAME 
                    AND A.COLUMN_NAME = B.COLUMN_NAME
            )
), CONSTRAINT_VIEW AS (
    SELECT UCC.CONSTRAINT_NAME, UCC.TABLE_NAME, COLUMN_NAME
    , CASE WHEN CONSTRAINT_TYPE = 'P' THEN 'P.K'
        WHEN CONSTRAINT_TYPE = 'R' THEN 'F.K'
        ELSE CONSTRAINT_TYPE END
        AS CONSTRAINT_TYPE
    FROM USER_CONS_COLUMNS UCC INNER JOIN USER_CONSTRAINTS UC
        ON (
            UCC.TABLE_NAME = UC.TABLE_NAME
            AND UCC.CONSTRAINT_NAME = UC.CONSTRAINT_NAME
            AND UC.CONSTRAINT_TYPE IN ('P', 'R')
        )
), CONSTRAINT_LIST_VIEW AS (
    SELECT TABLE_NAME, COLUMN_NAME
        , LISTAGG(CONSTRAINT_TYPE, ', ') WITHIN GROUP(ORDER BY CONSTRAINT_TYPE DESC) CONSTRAINT_TYPE
    FROM CONSTRAINT_VIEW
    GROUP BY TABLE_NAME, COLUMN_NAME
)
SELECT  V1.COLUMN_ID, V1.COLUMN_NAME, COMMENTS
    , CONSTRAINT_TYPE, NULLABLE
    , DATA_TYPE, DATA_LENGTH
    , DATA_DEFAULT    
FROM COLUMN_VIEW V1 LEFT OUTER JOIN CONSTRAINT_LIST_VIEW V2
    ON ( 
        V1.TABLE_NAME = V2.TABLE_NAME
        AND V1.COLUMN_NAME = V2.COLUMN_NAME
    )
WHERE V1.TABLE_NAME = 'MEMBER'
>>>>>>> a96ef06deb0e57faa2162d4d7fe75f1bf8f86ffc
ORDER BY 1;