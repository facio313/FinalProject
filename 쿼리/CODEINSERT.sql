--채용과정 분류코드
SELECT *
FROM ALL_COL_COMMENTS
WHERE TABLE_NAME = 'PROCESS';

INSERT INTO PROCESS_CODE VALUES ('PRC01', '입사지원서');
INSERT INTO PROCESS_CODE VALUES ('PRC02', '자기소개서');
INSERT INTO PROCESS_CODE VALUES ('PRC03', '필기시험');
INSERT INTO PROCESS_CODE VALUES ('PRC04', '역량평가');
INSERT INTO PROCESS_CODE VALUES ('PRC05', '토론면접');
INSERT INTO PROCESS_CODE VALUES ('PRC06', '실무면접');
INSERT INTO PROCESS_CODE VALUES ('PRC07', '인턴십');
INSERT INTO PROCESS_CODE VALUES ('PRC08', '임원면접');

--채용과정 분류 항목코드
--채용과정 분류코드
SELECT *
FROM ALL_COL_COMMENTS
WHERE TABLE_NAME = 'SCORE_DISCUSS';

INSERT INTO ITEM_CODE VALUES ('ITM001', 'PRC01', '경력');
INSERT INTO ITEM_CODE VALUES ('ITM002', 'PRC01', '학력');
INSERT INTO ITEM_CODE VALUES ('ITM003', 'PRC01', '자격증');
INSERT INTO ITEM_CODE VALUES ('ITM004', 'PRC01', '기능');
INSERT INTO ITEM_CODE VALUES ('ITM005', 'PRC01', '주요활동');
INSERT INTO ITEM_CODE VALUES ('ITM006', 'PRC01', '사회경험');
INSERT INTO ITEM_CODE VALUES ('ITM007', 'PRC01', '수상내역');
INSERT INTO ITEM_CODE VALUES ('ITM008', 'PRC01', '교육이수');
INSERT INTO ITEM_CODE VALUES ('ITM009', 'PRC01', '병역사항');
INSERT INTO ITEM_CODE VALUES ('ITM010', 'PRC01', '추가항목1');
INSERT INTO ITEM_CODE VALUES ('ITM011', 'PRC01', '추가항목2');
INSERT INTO ITEM_CODE VALUES ('ITM012', 'PRC01', '추가항목3');

INSERT INTO ITEM_CODE VALUES ('ITM013', 'PRC02', '성장과정');
INSERT INTO ITEM_CODE VALUES ('ITM014', 'PRC02', '성격장단점');
INSERT INTO ITEM_CODE VALUES ('ITM015', 'PRC02', '학창시절');
INSERT INTO ITEM_CODE VALUES ('ITM016', 'PRC02', '직무경험');
INSERT INTO ITEM_CODE VALUES ('ITM017', 'PRC02', '지원동기');
INSERT INTO ITEM_CODE VALUES ('ITM018', 'PRC02', '입사후포부');
INSERT INTO ITEM_CODE VALUES ('ITM019', 'PRC02', '가족소개');
INSERT INTO ITEM_CODE VALUES ('ITM020', 'PRC02', '교외활동');
INSERT INTO ITEM_CODE VALUES ('ITM021', 'PRC02', '전공선택');
INSERT INTO ITEM_CODE VALUES ('ITM022', 'PRC02', '생활진로');
INSERT INTO ITEM_CODE VALUES ('ITM023', 'PRC02', '희망업무');
INSERT INTO ITEM_CODE VALUES ('ITM024', 'PRC02', '동아리');
INSERT INTO ITEM_CODE VALUES ('ITM025', 'PRC02', '봉사활동');
INSERT INTO ITEM_CODE VALUES ('ITM026', 'PRC02', '추가항목1');
INSERT INTO ITEM_CODE VALUES ('ITM027', 'PRC02', '추가항목2');
INSERT INTO ITEM_CODE VALUES ('ITM028', 'PRC02', '추가항목3');

INSERT INTO ITEM_CODE VALUES ('ITM029', 'PRC03', '과목1');
INSERT INTO ITEM_CODE VALUES ('ITM030', 'PRC03', '과목2');
INSERT INTO ITEM_CODE VALUES ('ITM031', 'PRC03', '과목3');
INSERT INTO ITEM_CODE VALUES ('ITM032', 'PRC03', '과목4');
INSERT INTO ITEM_CODE VALUES ('ITM033', 'PRC03', '과목5');
INSERT INTO ITEM_CODE VALUES ('ITM034', 'PRC03', '추가과목1');
INSERT INTO ITEM_CODE VALUES ('ITM035', 'PRC03', '추가과목2');
INSERT INTO ITEM_CODE VALUES ('ITM036', 'PRC03', '추가과목3');

INSERT INTO ITEM_CODE VALUES ('ITM037', 'PRC04', '시선과표정');
INSERT INTO ITEM_CODE VALUES ('ITM038', 'PRC04', '대면자세및행동');
INSERT INTO ITEM_CODE VALUES ('ITM039', 'PRC04', '언어와표현');
INSERT INTO ITEM_CODE VALUES ('ITM040', 'PRC04', '질의파악능력');
INSERT INTO ITEM_CODE VALUES ('ITM041', 'PRC04', '메타인지');
INSERT INTO ITEM_CODE VALUES ('ITM042', 'PRC04', '상황인식능력');
INSERT INTO ITEM_CODE VALUES ('ITM043', 'PRC04', '문제해결능력');
INSERT INTO ITEM_CODE VALUES ('ITM044', 'PRC04', '자기표현력');
INSERT INTO ITEM_CODE VALUES ('ITM045', 'PRC04', '논리력');
INSERT INTO ITEM_CODE VALUES ('ITM046', 'PRC04', '리더십');
INSERT INTO ITEM_CODE VALUES ('ITM047', 'PRC04', '인간관계');
INSERT INTO ITEM_CODE VALUES ('ITM048', 'PRC04', '추가항목1');
INSERT INTO ITEM_CODE VALUES ('ITM049', 'PRC04', '추가항목2');
INSERT INTO ITEM_CODE VALUES ('ITM050', 'PRC04', '추가항목3');

INSERT INTO ITEM_CODE VALUES ('ITM051', 'PRC05', '토론자세');
INSERT INTO ITEM_CODE VALUES ('ITM052', 'PRC05', '주제파악');
INSERT INTO ITEM_CODE VALUES ('ITM053', 'PRC05', '문제파악');
INSERT INTO ITEM_CODE VALUES ('ITM054', 'PRC05', '해결방안');
INSERT INTO ITEM_CODE VALUES ('ITM055', 'PRC05', '질의파악능력');
INSERT INTO ITEM_CODE VALUES ('ITM056', 'PRC05', '토론진행');
INSERT INTO ITEM_CODE VALUES ('ITM057', 'PRC05', '추가항목1');
INSERT INTO ITEM_CODE VALUES ('ITM058', 'PRC05', '추가항목2');
INSERT INTO ITEM_CODE VALUES ('ITM059', 'PRC05', '추가항목3');

INSERT INTO ITEM_CODE VALUES ('ITM060', 'PRC06', '직무이해도');
INSERT INTO ITEM_CODE VALUES ('ITM061', 'PRC06', '직무적합성');
INSERT INTO ITEM_CODE VALUES ('ITM062', 'PRC06', '실무관련지식');
INSERT INTO ITEM_CODE VALUES ('ITM063', 'PRC06', '실무경험');
INSERT INTO ITEM_CODE VALUES ('ITM064', 'PRC06', '추가항목1');
INSERT INTO ITEM_CODE VALUES ('ITM065', 'PRC06', '추가항목2');
INSERT INTO ITEM_CODE VALUES ('ITM066', 'PRC06', '추가항목3');
INSERT INTO ITEM_CODE VALUES ('ITM067', 'PRC06', '추가항목4');
INSERT INTO ITEM_CODE VALUES ('ITM068', 'PRC06', '추가항목5');

INSERT INTO ITEM_CODE VALUES ('ITM069', 'PRC07', '업무달성도');
INSERT INTO ITEM_CODE VALUES ('ITM070', 'PRC07', '업무신뢰도');
INSERT INTO ITEM_CODE VALUES ('ITM071', 'PRC07', '창의력');
INSERT INTO ITEM_CODE VALUES ('ITM072', 'PRC07', '직무지식');
INSERT INTO ITEM_CODE VALUES ('ITM073', 'PRC07', '판단력');
INSERT INTO ITEM_CODE VALUES ('ITM074', 'PRC07', '협조성');
INSERT INTO ITEM_CODE VALUES ('ITM075', 'PRC07', '규율성');
INSERT INTO ITEM_CODE VALUES ('ITM076', 'PRC07', '적극성');
INSERT INTO ITEM_CODE VALUES ('ITM077', 'PRC07', '책임감');
INSERT INTO ITEM_CODE VALUES ('ITM078', 'PRC07', '효율성');
INSERT INTO ITEM_CODE VALUES ('ITM079', 'PRC07', '도전의식');
INSERT INTO ITEM_CODE VALUES ('ITM080', 'PRC07', '공동체');
INSERT INTO ITEM_CODE VALUES ('ITM081', 'PRC07', '태도');
INSERT INTO ITEM_CODE VALUES ('ITM082', 'PRC07', '성실성');
INSERT INTO ITEM_CODE VALUES ('ITM083', 'PRC07', '추가항목1');
INSERT INTO ITEM_CODE VALUES ('ITM084', 'PRC07', '추가항목2');
INSERT INTO ITEM_CODE VALUES ('ITM085', 'PRC07', '추가항목3');

INSERT INTO ITEM_CODE VALUES ('ITM086', 'PRC08', '자기소개');
INSERT INTO ITEM_CODE VALUES ('ITM087', 'PRC08', '지원동기');
INSERT INTO ITEM_CODE VALUES ('ITM088', 'PRC08', '장단점');
INSERT INTO ITEM_CODE VALUES ('ITM089', 'PRC08', '취미');
INSERT INTO ITEM_CODE VALUES ('ITM090', 'PRC08', '특기');
INSERT INTO ITEM_CODE VALUES ('ITM091', 'PRC08', '스트레스해소');
INSERT INTO ITEM_CODE VALUES ('ITM092', 'PRC08', '존경인물');
INSERT INTO ITEM_CODE VALUES ('ITM093', 'PRC08', '조직생활');
INSERT INTO ITEM_CODE VALUES ('ITM094', 'PRC08', '공격형');
INSERT INTO ITEM_CODE VALUES ('ITM095', 'PRC08', '리더십');
INSERT INTO ITEM_CODE VALUES ('ITM096', 'PRC08', '팀워크');
INSERT INTO ITEM_CODE VALUES ('ITM097', 'PRC08', '갈등해결');
INSERT INTO ITEM_CODE VALUES ('ITM098', 'PRC08', '희생');
INSERT INTO ITEM_CODE VALUES ('ITM099', 'PRC08', '성취경험');
INSERT INTO ITEM_CODE VALUES ('ITM100', 'PRC08', '워라벨');
INSERT INTO ITEM_CODE VALUES ('ITM101', 'PRC08', '야근');
INSERT INTO ITEM_CODE VALUES ('ITM102', 'PRC08', '노조');
INSERT INTO ITEM_CODE VALUES ('ITM103', 'PRC08', '파업');
INSERT INTO ITEM_CODE VALUES ('ITM104', 'PRC08', '상사갈등');
INSERT INTO ITEM_CODE VALUES ('ITM105', 'PRC08', '추가항목1');
INSERT INTO ITEM_CODE VALUES ('ITM106', 'PRC08', '추가항목2');
INSERT INTO ITEM_CODE VALUES ('ITM107', 'PRC08', '추가항목3');


COMMIT;