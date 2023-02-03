-- 관리자 회원가입
INSERT INTO member (
    mem_id,
    mem_pass,
    mem_name,
    mem_use
) VALUES (
    'cks0000',
    'java',
    '최경수',
    'Y'
);

INSERT INTO admin (
    mem_id,
    mem_auth_cd
) VALUES (
    'cks0000',
    'ADMIN'
);

-- 일반회원 회원가입
INSERT INTO member (
    mem_id,
    mem_pass,
    mem_name,
    mem_use
) VALUES (
    'cks1111',
    'java',
    '최경수',
    'Y'
);

INSERT INTO seeker (
    mem_id,
    mem_nickname,
    mem_birth,
    mem_gender,
    mem_zip,
    mem_addr1,
    mem_addr2,
    mem_email,
    mem_tel,
    mem_certification,
    mem_carttotal,
    mem_score,
    mem_date,
    mem_auth_cd
) VALUES (
    'cks1111',
    '강미남인',
    TO_DATE('1995-03-13', 'YYYY-MM-DD'),
    'M',
    12345,
    '대전광역시 대덕구',
    '대청로',
    'https://facio313.github.io/',
    '010-0000-0000',
    'SMS',
    10000,
    10000,
    SYSDATE,
    'SEEKER'
);

-- 회사 정보 입력
INSERT INTO company (
    cmp_id,
    cmp_no,
    cmp_name,
    cmp_rep_name,
    cmp_bsns_no,
    cmp_addr1,
    cmp_addr2,
    cmp_zip,
    cmp_phone,
    cmp_estbl_date,
    cmp_smenp,
    cmp_mb_name
) VALUES (
    'apple',
    '1234567890',
    'apple',
    '최경수',
    '1234567890',
    'Mikuk',
    'California',
    '12345',
    '010-0000-0000',
    TO_DATE('1976-04-01', 'YYYY-MM-DD'),
    '주식회사',
    'IT'
);

-- 기업회원 회원가입
INSERT INTO member (
    mem_id,
    mem_pass,
    mem_name,
    mem_use
) VALUES (
    'cks2222',
    'java',
    '최경수',
    'Y'
);

INSERT INTO incruiter (
    mem_id,
    cmp_id,
    mem_email,
    mem_tel,
    mem_auth_cd,
    mem_approval,
    mem_date
) VALUES (
    'cks2222',
    'apple',
    'https://facio313.github.io/',
    '010-0000-0000',
    'INCRUITER',
    'Y',
    TO_DATE('2023-02-03', 'YYYY-MM-DD')
);

-- 기업회원 뷰
SELECT DISTINCT(COLUMN_NAME)
FROM COLS
WHERE TABLE_NAME IN ('INCRUITER', 'COMPANY');

CREATE OR REPLACE VIEW MEM_INCRUITER
AS
    SELECT  A.*, 
            B.CMP_ID, B.MEM_EMAIL, B.MEM_TEL, B.MEM_AUTH_CD, B.MEM_APPROVAL, B.MEM_DATE, 
            C.CMP_NO, C.CMP_NAME, C.CMP_REP_NAME, C.CMP_BSNS_NO, C.CMP_ADDR1, C.CMP_ADDR2, C.CMP_ZIP, C.CMP_PHONE, C.CMP_EMAIL, C.CMP_URL, C.CMP_ESTBL_DATE, C.CMP_SMENP, C.CMP_EMP_NO, C.CMP_AVR_WORK, C.CMP_AVR_SALARY, C.CMP_MB_NAME, C.CMP_CHECK, C.CMP_CONTENT, C.CMP_LOGO, C.ATT_ID
    FROM MEMBER A
    INNER JOIN INCRUITER B ON A.MEM_ID = B.MEM_ID
    INNER JOIN COMPANY C ON B.CMP_ID = C.CMP_ID
;
