--VIEW 만들기
--CREATE OR REPLACE VIEW RESUME_VIEW
--AS
--  SELECT
--  FROM
--;

--컬럼 중복 없애기
SELECT DISTINCT(COLUMN_NAME)
FROM COLS
WHERE TABLE_NAME IN ('RESUME', 'RESUME_ITEM', 'EDUCATION', 'CAREER', 'CERTIFICATION', 'FACILITY', 'ACTIVITY', 'COURSE', 'AWARD');


--OUTER JOIN - 어떤 회원이 하나의 이력서에 쓴 이력서 항목들
    SELECT
         A.RESUME_SN, A.MEM_ID, A.RESUME_ADDR1, A.RESUME_DELETE_DATE, A.RESUME_EMAIL, A.RESUME_GENDER, A.RESUME_INSERT_DATE, A.RESUME_NAME,A.RESUME_TEL
        , B.RESUME_ITEM_SN
        , C.EDU_SN, C.EDU_DELETE_DATE, C.EDU_DEPARTMENT, C.EDU_ENTERED, C.EDU_GRADUATE, C.EDU_INSERT_DATE, C.EDU_MAJOR, C.EDU_NAME, C.EDU_SCORE, C.EDU_STANDARD, C.EDU_STATUS
        , D.CAREER_SN, D.CAREER_ANNUAL, D.CAREER_CATEGORY, D.CAREER_CLASS, D.CAREER_DELETE_DATE, D.CAREER_INSERT_DATE, D.CAREER_JOIN, D.CAREER_RESIGN, D.CAREER_SALARY, D.CAREER_COMPANY, D.CAREER_TASK
        , E.CERT_SN, E.CERT_DATE, E.CERT_DELETE_DATE, E.CERT_INSERT_DATE, E.CERT_INSTITUTION, E.CERT_NAME, E.CERT_NO 
        , F.FACILITY_SN, F.FACILITY_CATEGORY, F.FACILITY_DELETE_DATE, F.FACILITY_GETDATE, F.FACILITY_INSERT_DATE, F.FACILITY_LEVEL, F.FACILITY_NAME, F.FACILITY_PERIOD
        , G.ACT_SN, G.ACT_CATEGORY, G.ACT_DELETE_DATE, G.ACT_INSERT_DATE, G.ACT_INSTITUTION, G.ACT_NAME, G.ACT_PERIOD
        , H.COURSE_SN, H.COURSE_CATEGORY, H.COURSE_DELETE_DATE, H.COURSE_INSERT_DATE, H.COURSE_INSTITUTION, H.COURSE_NAME, H.COURSE_PERIOD
        , I.AWARD_SN, I.AWARD_CATEGORY, I.AWARD_COMPETITION, I.AWARD_DATE, I.AWARD_DELETE_DATE, I.AWARD_INSERT_DATE, I.AWARD_INSTITUTION, I.AWARD_NAME
    FROM RESUME A
    LEFT OUTER JOIN RESUME_ITEM B ON A.RESUME_SN = B.RESUME_SN
    LEFT OUTER JOIN EDUCATION C ON B.RESUME_ITEM_SN = C.EDU_SN
    LEFT OUTER JOIN CAREER D ON B.RESUME_ITEM_SN = D.CAREER_SN
    LEFT OUTER JOIN CERTIFICATION E ON B.RESUME_ITEM_SN = E.CERT_SN
    LEFT OUTER JOIN FACILITY F ON B.RESUME_ITEM_SN = F.FACILITY_SN
    LEFT OUTER JOIN ACTIVITY G ON B.RESUME_ITEM_SN = G.ACT_SN
    LEFT OUTER JOIN COURSE H ON B.RESUME_ITEM_SN = H.COURSE_SN
    LEFT OUTER JOIN AWARD I ON B.RESUME_ITEM_SN = I.AWARD_SN
    WHERE A.MEM_ID = 'cks1111'

--어떤 회원이 쓴 이력서 항목들
SELECT *
FROM RESUME_ITEM A
INNER JOIN EDUCATION B ON (A.RESUME_ITEM_SN = B.EDU_SN)
WHERE RESUME_SN = (
    SELECT RESUME_SN
    FROM RESUME
    WHERE MEM_ID = 'cks1111'
);



