--한 세부공고가 갖는 항목
SELECT *
FROM ITEM A
INNER JOIN ITEM_CODE B ON A.ITEM_CODE_ID = B.ITEM_CODE_ID
WHERE A.DA_NO = 'AD000089'
ORDER BY A.ITEM_CODE_ID;

SELECT 
    A.DA_NO
    , B.PROCESS_CODE_ID
    , A.ITEM_CODE_ID
    , B.ITEM_CODE_NAME
    , A.ITEM_ASK
FROM ITEM A
INNER JOIN ITEM_CODE B ON A.ITEM_CODE_ID = B.ITEM_CODE_ID
INNER JOIN PROCESS C ON A.DA_NO = C.DA_NO AND b.process_code_id = c.process_code_id
WHERE A.DA_NO = 'AD000089'
ORDER BY A.ITEM_CODE_ID;


SELECT *
FROM ANNO_DETAIL
WHERE DA_NO = 'AD000089';

SELECT *
FROM ITEM_CODE
WHERE PROCESS_CODE_ID = 'PRC08';

INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM001');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM002');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM004');

INSERT INTO ITEM (DA_NO, ITEM_CODE_ID, ITEM_ASK) VALUES ('AD000089', 'ITM013', '성장과정에 대해 서술하시오.');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID, ITEM_ASK) VALUES ('AD000089', 'ITM017', '지원동기에 대해 서술하시오.');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID, ITEM_ASK) VALUES ('AD000089', 'ITM018', '입사후 포부에 대해 서술하시오.');

INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM029');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM030');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM031');

INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM037');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM038');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM041');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM044');

INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM051');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM054');

INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM060');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM061');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM062');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM063');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM064');

INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM069');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM070');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM071');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM072');

INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM086');
INSERT INTO ITEM (DA_NO, ITEM_CODE_ID) VALUES ('AD000089', 'ITM087');