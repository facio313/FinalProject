SELECT COLUMN_NAME, DATA_TYPE, NULLABLE
FROM COLS
WHERE TABLE_NAME = 'PROCESS_CODE';

INSERT INTO PROCESS_CODE VALUES ('PCD01', '입사지원서');
INSERT INTO PROCESS_CODE VALUES ('PCD02', '자기소개서');
INSERT INTO PROCESS_CODE VALUES ('PCD03', '필기시험');
INSERT INTO PROCESS_CODE VALUES ('PCD04', '역량평가');
INSERT INTO PROCESS_CODE VALUES ('PCD05', '토론면접');
INSERT INTO PROCESS_CODE VALUES ('PCD06', '실무면접');
INSERT INTO PROCESS_CODE VALUES ('PCD07', '인턴십');
INSERT INTO PROCESS_CODE VALUES ('PCD08', '임원면접');

COMMIT;