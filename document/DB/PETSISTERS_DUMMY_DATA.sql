--------------------------------------------------
--------------    회원 테이블 더미    --------------
--------------------------------------------------
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'admin', '1234', '관리자', '1234561234567', '관리자', '01012341234', 'admin@kh.or.kr', '서울시 영등포구', 'F', 'N', 'N', NULL, 'Y', NULL, SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user01', 'pass01', '펫시터1', '1234561234567', '펫시터1', '01011111111', 'user01@kh.or.kr', '서울시 영등포구', 'F', 'Y', 'N', NULL, 'Y', NULL, SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user02', 'pass02', '펫시터2', '1234561234567', '펫시터2', '01022222222', 'user02@kh.or.kr', '서울시 영등포구', 'F', 'Y', 'N', NULL, 'Y', NULL, SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user03', 'pass03', '펫시터3', '1234561234567', '펫시터3', '01033333333', 'user03@kh.or.kr', '서울시 영등포구', 'F', 'Y', 'N', NULL, 'Y', NULL, SYSDATE);

--------------------------------------------------
----------    펫시터 프로필 테이블 더미    ----------
--------------------------------------------------
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '안전하고 편안하게 돌봐주는 펫시팅','test', NULL, NULL, DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, 'test', 'test', NULL, NULL, DEFAULT, 3);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, 'test', 'test', NULL, NULL, DEFAULT, 4);

INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '안전하고 편안하게 돌봐주는 펫시팅','호박고구마, 힘드졍', '흡연자, 힘들당', '어디에 쓰는고', DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '나는 곤쥬님','호박고구마, 힘드졍', '흡연자, 힘들당', '어디에 쓰는고', DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '나는 곤쥬님','호박고구마, 힘드졍', '흡연자, 힘들당', '어디에 쓰는고', DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '나는 곤쥬님','호박고구마, 힘드졍', '흡연자, 힘들당', '어디에 쓰는고', DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '나는 곤쥬님','호박고구마, 힘드졍', '흡연자, 힘들당', '어디에 쓰는고', DEFAULT, 2);

--------------------------------------------------
---------    펫시터 프로필 업데이트 더미    ---------
--------------------------------------------------
UPDATE PETSITTER
SET P_CONTENT = '반려견을 저에게 맡겨 주십쇼 어르신',
    P_SERVICE = '약물복용,목욕가능,매일산책',
    CARE_LIST = '주택 살아요, 아이 없어요'
WHERE USER_NO = 2;
UPDATE PETSITTER
SET P_TITLE = '내 아이를 돌보듯 따뜻하고 편안하게',
    P_CONTENT = '사랑과 정성으로 최선을 다해 보살펴드리겠습니다.',
    P_SERVICE = '모발관리,응급처치,매일산책,실내놀이',
    CARE_LIST = '아파트 살아요, 반려동물 있어요'
WHERE USER_NO = 3;

--------------------------------------------------
------    펫시터 프로필 첨부파일 테이블 더미    ------
--------------------------------------------------
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '그림이사진1.jpg',
         '2023060154348464359.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         1);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '그림이사진2.jpg',
         '2023060454348464669.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         5);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '개1.jpg',
         '2023060494348464342.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         1);     

--------------------------------------------------
-----------    공지사항 테이블 더미    -------------
--------------------------------------------------
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[공지] 펫시스터즈 안심보험 적용안내드립니다.', 
'안녕하세요 펫시스터즈입니다. 항상 펫시스터즈를 이용해주시는 보호자님들께 진심으로 감사드립니다. <br/><br/>
2023년 4월 1일부터 펫시스터즈에서 돌봄 의뢰 수행 도중 반려동물이 신체적 손해를 입을 경우에 관련 배상비용을 지원하는 펫시스터즈 안심보험
(한화손해보험 전문인배상책임보험)에 가입되었음을 안내드립니다. <br/><br/>
펫시스터즈 안심보험은 업계 최초의 펫시터 보험으로 펫시스터즈에서 매칭되는 모든 돌봄 의뢰에 대해 적용되며,
돌봄 대상으로 등록된 반려동물이 입은 신체적 손해를 보장합니다. <br/><br/>
보험 가입 비용은 전액 펫시스터즈에서 부담하며, 돌봄 비용은 기존과 동일합니다. <br/><br/>
앞으로도 더욱 안전한 반려동물 케어 서비스를 제공할 수 있도록 노력하겠습니다. <br/><br/>
감사합니다.', SYSDATE, 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[안내] 6월 고객센터 휴무 일정 안내',
'안녕하세요 펫시스터즈입니다. <br/> 항상 펫시스터즈를 이용해주시는 보호자님들께 진심으로 감사드립니다. <br/><br/>
2023년 6월 고객센터 휴무 일정 안내 드립니다. <br/>
보호자님의 양해 부탁드리며, 아래 내용 확인하셔서 이용에 불편 없으시기를 바랍니다. <br/><br/>
● 현충일 : 2023. 06. 06(화) 고객센터 휴무 <br/><br/>
문의글에 대한 답변은 6월 7일(수)부터 순차적으로 제공됩니다. <br/><br/>
감사합니다.', SYSDATE, 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[기획성] 댕댕이의 여름나기',
'안녕하세요 펫시스터즈입니다. 항상 펫시스터즈를 이용해주시는 보호자님들께 진심으로 감사드립니다. <br/>
다가오는 무더운 여름을 대비해 반려인과 반려견 모두 즐겁게 여름철 산책을 즐기는 방법을 준비했습니다. <br/><br/>
해충 조심! <br/>
겨울철보다 관련 예방 접종이나 기생충 예방약 복용에 신경써주세요. <br/><br/>
뜨거운 아스팔트 조심! <br/>
아스팔트는 낮에 흡수한 열을 해가 진 이후까지 유지합니다. <br/>
뜨겁게 달궈진 아스팔트를 반려견이 발로 밟는다면 화상을 입을 수 있습니다. <br/>
신발을 신기거나 반려인이 먼저 온도를 체크 후 밟도록 유도해주세요. <br/><br/>
여름철에는 고온 다습하여 피부병에 걸리기 쉽습니다. 산책을 다녀와서 목욕 후에는 반드시 완벽하게 수분을 말려주세요. <br/>
더운 여름, 건강하게 즐기며 지낼 수 있도록 보호자님들이 잘 챙기시면 좋겠습니다.', SYSDATE, 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[정보] 오늘은 반려동물의 날',
'오늘은 반려동물의 날이에요. 이름부터 귀엽지 않나요? <br/> 안 귀엽다고? 그럴리가 없는데... <br/><br/>', SYSDATE, 0, 'Y');
 
--------------------------------------------------
------------    펫시터찜 테이블 더미    ------------
--------------------------------------------------
INSERT INTO P_LIKE
VALUES (3, 1);
INSERT INTO P_LIKE
VALUES (1, 1);
INSERT INTO P_LIKE
VALUES (2, 1);
INSERT INTO P_LIKE
VALUES (4, 1);

--------------------------------------------------
-------------    예약 테이블 더미    --------------
--------------------------------------------------
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-05-21',
         '2023-05-24',
         '2023-05-02',
         '멍멍',
         'Y',
         2,
         5);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-10',
         '2023-06-01',
         '뭉뭉',
         'Y',
         2,
         1);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '우리집 개는 물어요 잘해보세요',
         'Y',
         2,
         4);
         
--------------------------------------------------
---------------    후기 테이블 더미    --------------
--------------------------------------------------
INSERT INTO REVIEW
VALUES(SEQ_REVIEW.NEXTVAL,
       '정말 넘모 조와용',
       '어쩜 이리 섬세하신지..홍홍',
       SYSDATE,
       '만족하셨다니 기분이 좋네요',
       SYSDATE,
       'Y',
       NULL,
       1);
       
--------------------------------------------------
-------------    강아지 테이블 더미    ---------------
--------------------------------------------------
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '초롱이',
       'M',
       '셰퍼드',
       '20/04/12',
       12,
       'N',
       NULL,
       '스크린샷 2023-03-22 170409.png',
       'Y',
       2);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '나롱이',
       'F',
       '말티즈',
       '19/09/16',
       18,
       'Y',
       NULL,
       '스크린샷 2023-03-22 170409.png',
       'Y',
       3);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '쪼꼬미',
       'F',
       '말라뮤트',
       '22/12/01',
       21,
       'Y',
       NULL,
       '스크린샷 2023-03-22 170409.png',
       'Y',
       4);    
       
--------------------------------------------------
--------------    채팅방 테이블 더미    --------------
--------------------------------------------------
INSERT INTO CHAT_ROOM VALUES(1,1,2);
       
--------------------------------------------------
-----------------    커밋구문    ------------------
--------------------------------------------------
         
 COMMIT;