--------------------------------------------------
--------------    È¸¿ø Å×ÀÌºí ´õ¹Ì    --------------
--------------------------------------------------
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'admin', '1234', '°ü¸®ÀÚ', '1234561234567', '°ü¸®ÀÚ', '01012341234', 'admin@kh.or.kr', '¼­¿ï½Ã ¿µµîÆ÷±¸', 'F', 'N', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/1.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user01', 'pass01', 'Æê½ÃÅÍ1', '1234561234567', 'Æê½ÃÅÍ1', '01011111111', 'user01@kh.or.kr', '¼­¿ï½Ã ¿µµîÆ÷±¸', 'F', 'Y', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/2.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user02', 'pass02', 'Æê½ÃÅÍ2', '1234561234567', 'Æê½ÃÅÍ2', '01022222222', 'user02@kh.or.kr', '¼­¿ï½Ã ¿µµîÆ÷±¸', 'F', 'Y', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/3.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user03', 'pass03', 'Æê½ÃÅÍ3', '1234561234567', 'Æê½ÃÅÍ3', '01033333333', 'user03@kh.or.kr', '¼­¿ï½Ã ¿µµîÆ÷±¸', 'F', 'Y', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/4.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user04', 'pass04', 'Æê½ÃÅÍ4', '1234561234567', 'Æê½ÃÅÍ4', '01044444444', 'user04@kh.or.kr', '¼­¿ï½Ã ¿µµîÆ÷±¸', 'F', 'Y', 'Y', '2023-05-01', 'Y', '/resources/upFiles/member_profiles/5.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user05', 'pass05', 'Æê½ÃÅÍ5', '1234561234567', 'Æê½ÃÅÍ5', '01055555555', 'user05@kh.or.kr', '¼­¿ï½Ã ¿µµîÆ÷±¸', 'F', 'Y', 'Y', '2023-06-01', 'Y', '/resources/upFiles/member_profiles/6.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user06', 'pass06', '°í°´6', '1234561234567', '°í°´6', '01066666666', 'user06@kh.or.kr', '¼­¿ï½Ã ¿µµîÆ÷±¸', 'F', 'N', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/7.png', SYSDATE);
INSERT INTO MEMBER VALUES (SEQ_MEMBER.NEXTVAL, 'user07', 'pass07', '°í°´7', '1234561234567', '°í°´7', '01077777777', 'user07@kh.or.kr', '¼­¿ï½Ã ¿µµîÆ÷±¸', 'F', 'N', 'N', NULL, 'Y', '/resources/upFiles/member_profiles/8.png', SYSDATE);

--------------------------------------------------
-----------    Æê½ÃÅÍ ÇÁ·ÎÇÊ Å×ÀÌºí ´õ¹Ì    -----------
--------------------------------------------------
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '¾ÈÀüÇÏ°í Æí¾ÈÇÏ°Ô µ¹ºÁÁÖ´Â Æê½ÃÆÃ','test', NULL, NULL, DEFAULT, 2);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, 'test', 'test', NULL, NULL, DEFAULT, 3);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, '¾ÈÀüÇÏ°í Æí¾ÈÇÏ°Ô µ¹ºÁÁÖ´Â Æê½ÃÆÃ','È£¹Ú°í±¸¸¶, ÈûµåÁ´', 'Èí¿¬ÀÚ, Èûµé´ç', '¾îµð¿¡ ¾²´Â°í', DEFAULT, 4);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, 'Àú´Â 4¹ø Æê½ÃÅÍÀÔ´Ï´Ù.','¾î¸Ó´Ï È£±¸¸¶¿ä?', 'Èí¿¬ÀÚ, Èûµé´ç', '¾îµð¿¡ ¾²´Â°í', DEFAULT, 5);
INSERT INTO PETSITTER (P_NO, P_TITLE, P_CONTENT, P_SERVICE, CARE_LIST, P_MODE, USER_NO) VALUES (SEQ_PETSITTER.NEXTVAL, 'Àú´Â 5¹ø Æê½ÃÅÍÀÔ´Ï´Ù.','¾Æ´Ï È£¹Ú°í±¸¸¶ È£!¹Ú!°í!±¸!¸¶!!!!', 'Èí¿¬ÀÚ, Èûµé´ç', '¾îµð¿¡ ¾²´Â°í', DEFAULT, 6);

--------------------------------------------------
---------    Æê½ÃÅÍ ÇÁ·ÎÇÊ ¾÷µ¥ÀÌÆ® ´õ¹Ì    ---------
--------------------------------------------------
UPDATE PETSITTER
SET P_CONTENT = '¹Ý·Á°ßÀ» Àú¿¡°Ô ¸Ã°Ü ÁÖ½Ê¼î ¾î¸£½Å',
    P_SERVICE = '¾à¹°º¹¿ë,¸ñ¿å°¡´É,¸ÅÀÏ»êÃ¥',
    CARE_LIST = 'ÁÖÅÃ »ì¾Æ¿ä, ¾ÆÀÌ ¾ø¾î¿ä'
WHERE USER_NO = 2;
UPDATE PETSITTER
SET P_TITLE = '³» ¾ÆÀÌ¸¦ µ¹º¸µí µû¶æÇÏ°í Æí¾ÈÇÏ°Ô',
    P_CONTENT = '»ç¶û°ú Á¤¼ºÀ¸·Î ÃÖ¼±À» ´ÙÇØ º¸»ìÆìµå¸®°Ú½À´Ï´Ù.',
    P_SERVICE = '¸ð¹ß°ü¸®,ÀÀ±ÞÃ³Ä¡,¸ÅÀÏ»êÃ¥,½Ç³»³îÀÌ',
    CARE_LIST = '¾ÆÆÄÆ® »ì¾Æ¿ä, ¹Ý·Áµ¿¹° ÀÖ¾î¿ä'
WHERE USER_NO = 3;

--------------------------------------------------
------    Æê½ÃÅÍ ÇÁ·ÎÇÊ Ã·ºÎÆÄÀÏ Å×ÀÌºí ´õ¹Ì    ------
--------------------------------------------------
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '±×¸²ÀÌ»çÁø1.jpg',
         '±×¸²ÀÌ»çÁø1.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         1);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '±×¸²ÀÌ»çÁø2.jpg',
         '±×¸²ÀÌ»çÁø2.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         2);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '°³1.jpg',
         '°³1.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         3);   
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '°³2.jpg',
         '°³2.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         4);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '°³3.jpg',
         '°³3.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         4);     
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '°³4.jpg',
         '°³4.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         5);
INSERT INTO P_ATTACHMENT
VALUES ( SEQ_P_ATTACHMENT.NEXTVAL,
         '°³1.jpg',
         '°³1.jpg',
         'resources/upFiles/petsitter_upfiles/',
         SYSDATE,
         'Y',
         1,
         5);

--------------------------------------------------
-----------    °øÁö»çÇ× Å×ÀÌºí ´õ¹Ì    -------------
--------------------------------------------------
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[°øÁö] Æê½Ã½ºÅÍÁî ¾È½Éº¸Çè Àû¿ë¾È³»µå¸³´Ï´Ù.', 
'¾È³çÇÏ¼¼¿ä Æê½Ã½ºÅÍÁîÀÔ´Ï´Ù. Ç×»ó Æê½Ã½ºÅÍÁî¸¦ ÀÌ¿ëÇØÁÖ½Ã´Â º¸È£ÀÚ´Ôµé²² Áø½ÉÀ¸·Î °¨»çµå¸³´Ï´Ù. <br/><br/>
2023³â 4¿ù 1ÀÏºÎÅÍ Æê½Ã½ºÅÍÁî¿¡¼­ µ¹º½ ÀÇ·Ú ¼öÇà µµÁß ¹Ý·Áµ¿¹°ÀÌ ½ÅÃ¼Àû ¼ÕÇØ¸¦ ÀÔÀ» °æ¿ì¿¡ °ü·Ã ¹è»óºñ¿ëÀ» Áö¿øÇÏ´Â Æê½Ã½ºÅÍÁî ¾È½Éº¸Çè
(ÇÑÈ­¼ÕÇØº¸Çè Àü¹®ÀÎ¹è»óÃ¥ÀÓº¸Çè)¿¡ °¡ÀÔµÇ¾úÀ½À» ¾È³»µå¸³´Ï´Ù. <br/><br/>
Æê½Ã½ºÅÍÁî ¾È½Éº¸ÇèÀº ¾÷°è ÃÖÃÊÀÇ Æê½ÃÅÍ º¸ÇèÀ¸·Î Æê½Ã½ºÅÍÁî¿¡¼­ ¸ÅÄªµÇ´Â ¸ðµç µ¹º½ ÀÇ·Ú¿¡ ´ëÇØ Àû¿ëµÇ¸ç,
µ¹º½ ´ë»óÀ¸·Î µî·ÏµÈ ¹Ý·Áµ¿¹°ÀÌ ÀÔÀº ½ÅÃ¼Àû ¼ÕÇØ¸¦ º¸ÀåÇÕ´Ï´Ù. <br/><br/>
º¸Çè °¡ÀÔ ºñ¿ëÀº Àü¾× Æê½Ã½ºÅÍÁî¿¡¼­ ºÎ´ãÇÏ¸ç, µ¹º½ ºñ¿ëÀº ±âÁ¸°ú µ¿ÀÏÇÕ´Ï´Ù. <br/><br/>
¾ÕÀ¸·Îµµ ´õ¿í ¾ÈÀüÇÑ ¹Ý·Áµ¿¹° ÄÉ¾î ¼­ºñ½º¸¦ Á¦°øÇÒ ¼ö ÀÖµµ·Ï ³ë·ÂÇÏ°Ú½À´Ï´Ù. <br/><br/>
°¨»çÇÕ´Ï´Ù.', '2023-06-01', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[¾È³»] 6¿ù °í°´¼¾ÅÍ ÈÞ¹« ÀÏÁ¤ ¾È³»',
'¾È³çÇÏ¼¼¿ä Æê½Ã½ºÅÍÁîÀÔ´Ï´Ù. <br/> Ç×»ó Æê½Ã½ºÅÍÁî¸¦ ÀÌ¿ëÇØÁÖ½Ã´Â º¸È£ÀÚ´Ôµé²² Áø½ÉÀ¸·Î °¨»çµå¸³´Ï´Ù. <br/><br/>
2023³â 6¿ù °í°´¼¾ÅÍ ÈÞ¹« ÀÏÁ¤ ¾È³» µå¸³´Ï´Ù. <br/>
º¸È£ÀÚ´ÔÀÇ ¾çÇØ ºÎÅ¹µå¸®¸ç, ¾Æ·¡ ³»¿ë È®ÀÎÇÏ¼Å¼­ ÀÌ¿ë¿¡ ºÒÆí ¾øÀ¸½Ã±â¸¦ ¹Ù¶ø´Ï´Ù. <br/><br/>
¡Ü ÇöÃæÀÏ : 2023. 06. 06(È­) °í°´¼¾ÅÍ ÈÞ¹« <br/><br/>
¹®ÀÇ±Û¿¡ ´ëÇÑ ´äº¯Àº 6¿ù 7ÀÏ(¼ö)ºÎÅÍ ¼øÂ÷ÀûÀ¸·Î Á¦°øµË´Ï´Ù. <br/><br/>
°¨»çÇÕ´Ï´Ù.', '2023-06-05', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[Á¤º¸] ¿À´ÃÀº ¹Ý·Áµ¿¹°ÀÇ ³¯',
'¿À´ÃÀº ¹Ý·Áµ¿¹°ÀÇ ³¯ÀÌ¿¡¿ä. ÀÌ¸§ºÎÅÍ ±Í¿±Áö ¾Ê³ª¿ä? <br/> ¾È ±Í¿±´Ù°í? ±×·²¸®°¡ ¾ø´Âµ¥... <br/><br/>', '2023-06-06', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[±âÈ¹¼º] ´ó´óÀÌÀÇ ¿©¸§³ª±â',
'¾È³çÇÏ¼¼¿ä Æê½Ã½ºÅÍÁîÀÔ´Ï´Ù. Ç×»ó Æê½Ã½ºÅÍÁî¸¦ ÀÌ¿ëÇØÁÖ½Ã´Â º¸È£ÀÚ´Ôµé²² Áø½ÉÀ¸·Î °¨»çµå¸³´Ï´Ù. <br/>
´Ù°¡¿À´Â ¹«´õ¿î ¿©¸§À» ´ëºñÇØ ¹Ý·ÁÀÎ°ú ¹Ý·Á°ß ¸ðµÎ Áñ°Ì°Ô ¿©¸§Ã¶ »êÃ¥À» Áñ±â´Â ¹æ¹ýÀ» ÁØºñÇß½À´Ï´Ù. <br/><br/>
ÇØÃæ Á¶½É! <br/>
°Ü¿ïÃ¶º¸´Ù °ü·Ã ¿¹¹æ Á¢Á¾ÀÌ³ª ±â»ýÃæ ¿¹¹æ¾à º¹¿ë¿¡ ½Å°æ½áÁÖ¼¼¿ä. <br/><br/>
¶ß°Å¿î ¾Æ½ºÆÈÆ® Á¶½É! <br/>
¾Æ½ºÆÈÆ®´Â ³·¿¡ Èí¼öÇÑ ¿­À» ÇØ°¡ Áø ÀÌÈÄ±îÁö À¯ÁöÇÕ´Ï´Ù. <br/>
¶ß°Ì°Ô ´Þ±ÅÁø ¾Æ½ºÆÈÆ®¸¦ ¹Ý·Á°ßÀÌ ¹ß·Î ¹â´Â´Ù¸é È­»óÀ» ÀÔÀ» ¼ö ÀÖ½À´Ï´Ù. <br/>
½Å¹ßÀ» ½Å±â°Å³ª ¹Ý·ÁÀÎÀÌ ¸ÕÀú ¿Âµµ¸¦ Ã¼Å© ÈÄ ¹âµµ·Ï À¯µµÇØÁÖ¼¼¿ä. <br/><br/>
¿©¸§Ã¶¿¡´Â °í¿Â ´Ù½ÀÇÏ¿© ÇÇºÎº´¿¡ °É¸®±â ½±½À´Ï´Ù. »êÃ¥À» ´Ù³à¿Í¼­ ¸ñ¿å ÈÄ¿¡´Â ¹Ýµå½Ã ¿Ïº®ÇÏ°Ô ¼öºÐÀ» ¸»·ÁÁÖ¼¼¿ä. <br/>
´õ¿î ¿©¸§, °Ç°­ÇÏ°Ô Áñ±â¸ç Áö³¾ ¼ö ÀÖµµ·Ï º¸È£ÀÚ´ÔµéÀÌ Àß Ã¬±â½Ã¸é ÁÁ°Ú½À´Ï´Ù.', '2023-06-10', 0, 'Y');

--------------------------------------------------
------------    1:1¹®ÀÇ Å×ÀÌºí ´õ¹Ì    ------------
--------------------------------------------------
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , 'Æê½ÃÆÃ ÀÌÈÄ¿¡ ¾ø´ø »óÃ³°¡ »ý°å¾î¿ä'
           , 'Á¦ÀÏ ÃÖ±Ù¿¡ ¸Ã±ä Æê½ÃÆÃ ÀÌÈÄ·Î ¾È º¸ÀÌ´ø »óÃ³¸¦ ¹ß°ßÇß¾î¿ä. <br/>
             Æê½ÃÅÍ ºÐ²² Àü´Þ¹ÞÀº ³»¿ëÀº ¾ø¾ú°í¿ä. <br/>
             º´¿ø¿¡ °¡º¼ Á¤µµ´Â ¾Æ´ÏÁö¸¸ ÄÉ¾îÇÏ½Ã¸é¼­ ¾Ë¾ÆÃ¤Áö ¸øÇÒ Á¤µµ´Â ¾Æ´Ï¾úÀ» °Í °°Àºµ¥ ¹«½¼ ÀÏÀÌ¾ú´ÂÁö Á» ¾Ë°í ½Í¾î¿ä.'
           , '2023-06-07'
           , 'Y'
           , 7);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '¿¹¾à ÀÏÁ¤À» ÇÏ·ç¾¿ ¹Ì·ê ¼ö ÀÖÀ»±î¿ä?'
           , 'ÀÏÁ¤ÀÌ ¹Ù²î¾î¼­ Ã¼Å©ÀÎ, Ã¼Å©¾Æ¿ô ³¯Â¥¸¦ ÇÏ·ç¾¿ ¹Ì·ç°í ½ÍÀºµ¥¿ä. <br/>
             È¤½Ã ¿¹¾àÀ» Ãë¼ÒÇÏÁö ¾Ê°í Æê½ÃÅÍ Àç·®À¸·Î ³¯Â¥¸¸ ¹Ì·ê ¼ö ÀÖÀ»±î¿ä?'
           , '2023-06-14'
           , 'Y'
           , 7);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '¾ÆÀÌ ÇÏ³×½º ÁÙÀÌ ¹Ù²ï °Í °°¾Æ¿ä.'
           , 'Æê½ÃÆÃ ¸Ã±â¸é¼­ °°ÀÌ µå·È´ø ÇÏ³×½ºÁÙÀÌ ÀÖ¾ú´Âµ¥, ¿ø·¡ ¾²´ø °Ô ¾Æ´Ï¶ó¼­¿ä. <br/>
             µÎ °³ »ö±òÀÌ °°¾Æ¼­ Çò°¥¸®½Å °Í °°Àºµ¥ Æê½ÃÅÍ ºÐ²² °³ÀÎÀûÀ¸·Î ¿¬¶ô µå¸± ¹æ¹ýÀÌ ÀÖÀ»±î¿ä?'
           , SYSDATE
           , 'Y'
           , 7);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , 'Æê½ÃÆÃ ÀÌÈÄ¿¡ ¾ø´ø »óÃ³°¡ »ý°å¾î¿ä'
           , 'Á¦ÀÏ ÃÖ±Ù¿¡ ¸Ã±ä Æê½ÃÆÃ ÀÌÈÄ·Î ¾È º¸ÀÌ´ø »óÃ³¸¦ ¹ß°ßÇß¾î¿ä. <br/>
             Æê½ÃÅÍ ºÐ²² Àü´Þ¹ÞÀº ³»¿ëÀº ¾ø¾ú°í¿ä. <br/>
             º´¿ø¿¡ °¡º¼ Á¤µµ´Â ¾Æ´ÏÁö¸¸ ÄÉ¾îÇÏ½Ã¸é¼­ ¾Ë¾ÆÃ¤Áö ¸øÇÒ Á¤µµ´Â ¾Æ´Ï¾úÀ» °Í °°Àºµ¥ ¹«½¼ ÀÏÀÌ¾ú´ÂÁö Á» ¾Ë°í ½Í¾î¿ä.'
           , '2023-06-07'
           , 'Y'
           , 8);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '¿¹¾à ÀÏÁ¤À» ÇÏ·ç¾¿ ¹Ì·ê ¼ö ÀÖÀ»±î¿ä?'
           , 'ÀÏÁ¤ÀÌ ¹Ù²î¾î¼­ Ã¼Å©ÀÎ, Ã¼Å©¾Æ¿ô ³¯Â¥¸¦ ÇÏ·ç¾¿ ¹Ì·ç°í ½ÍÀºµ¥¿ä. <br/>
             È¤½Ã ¿¹¾àÀ» Ãë¼ÒÇÏÁö ¾Ê°í Æê½ÃÅÍ Àç·®À¸·Î ³¯Â¥¸¸ ¹Ì·ê ¼ö ÀÖÀ»±î¿ä?'
           , '2023-06-14'
           , 'Y'
           , 8);
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '¾ÆÀÌ ÇÏ³×½º ÁÙÀÌ ¹Ù²ï °Í °°¾Æ¿ä.'
           , 'Æê½ÃÆÃ ¸Ã±â¸é¼­ °°ÀÌ µå·È´ø ÇÏ³×½ºÁÙÀÌ ÀÖ¾ú´Âµ¥, ¿ø·¡ ¾²´ø °Ô ¾Æ´Ï¶ó¼­¿ä. <br/>
             µÎ °³ »ö±òÀÌ °°¾Æ¼­ Çò°¥¸®½Å °Í °°Àºµ¥ Æê½ÃÅÍ ºÐ²² °³ÀÎÀûÀ¸·Î ¿¬¶ô µå¸± ¹æ¹ýÀÌ ÀÖÀ»±î¿ä?'
           , SYSDATE
           , 'Y'
           , 8);
 
--------------------------------------------------
------------    Æê½ÃÅÍÂò Å×ÀÌºí ´õ¹Ì    ------------
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
-------------    ¿¹¾à Å×ÀÌºí ´õ¹Ì    --------------
--------------------------------------------------
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '¿ì¸®Áý °³´Â ¹°¾î¿ä ÀßÇØº¸¼¼¿ä',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-05-21',
         '2023-05-24',
         '2023-05-02',
         '¸Û¸Û',
         'Y',
         2,
         5);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-10',
         '2023-06-01',
         '¹¶¹¶',
         'Y',
         2,
         1);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '¿ì¸®Áý °³´Â ¹°¾î¿ä ÀßÇØº¸¼¼¿ä',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '¿ì¸®Áý °³´Â ¹°¾î¿ä ÀßÇØº¸¼¼¿ä',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '¿ì¸®Áý °³´Â ¹°¾î¿ä ÀßÇØº¸¼¼¿ä',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '¿ì¸®Áý °³´Â ¹°¾î¿ä ÀßÇØº¸¼¼¿ä',
         'Y',
         2,
         4);
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-02',
         '2023-06-11',
         '2023-06-29',
         '¿ì¸®Áý °³´Â ¹°¾î¿ä ÀßÇØº¸¼¼¿ä',
         'Y',
         2,
         4);
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-01',
         '2023-06-20',
         '2023-05-29',
         '¸Þ¼¼ÁöÀÔ´Ï´Ù',
         'Y',
         3,
         4);        
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-10',
         '2023-06-11',
         '2023-05-30',
         '¿©±âºÎÅÍ½ÃÀÛ',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-08',
         '2023-06-09',
         '2023-06-01',
         'Çò°¥¸°´Ù',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-15',
         '2023-06-29',
         '2023-06-03',
         '¹ú½á¾îÁö·¯¿ö',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-01',
         '2023-06-30',
         '2023-06-04',
         '¸î°³³²¾ÒÁö',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-11',
         '2023-06-29',
         '2023-06-05',
         '¾îµð°¡³¡ÀÌ¾ß',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-29',
         '2023-07-01',
         '2023-06-07',
         'ÀÌÁ¦±×¸¸Á¦¹ß',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-06-10',
         '2023-06-20',
         '2023-06-08',
         'µµ¿ò!',
         'Y',
         3,
         4);  
         
INSERT INTO RESERVATION 
VALUES ( SEQ_RESERVATION.NEXTVAL,
         '2023-07-01',
         '2023-07-20',
         '2023-06-10',
         '½Ã¸¶ÀÌµ¥¾²',
         'Y',
         3,
         4);           
         
--------------------------------------------------
-----------    µ¹º½ÀÏÁö Å×ÀÌºí ´õ¹Ì    -------------
--------------------------------------------------
INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 1);	 	    	

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 4); 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 5);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 6);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 7);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 8);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 17);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 16);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 15);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 14);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', SYSDATE, 'Y', 13);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', '2023-06-12', 'Y', 12);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', '2023-06-11', 'Y', 11);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', '2023-06-10', 'Y', 10);	 

INSERT INTO JOURNAL (J_NO, J_TITLE, J_CONTENT, CREATE_DATE, STATUS, REF_RESNO)
VALUES (SEQ_JOURNAL.NEXTVAL, 'µ¹º½Å×½ºÆ®1', 'µ¹º½Å×½ºÆ®³»¿ë1', '2023-06-10', 'Y', 9);	 


--------------------------------------------------
---------    µ¹º½ÀÏÁö ÆÄÀÏ Å×ÀÌºí ´õ¹Ì    -----------
--------------------------------------------------
    INSERT INTO J_ATTACHMENT (FILE_NO, 
                              ORIGIN_NAME, 
                              CHANGE_NAME, 
                              FILE_PATH, 
                              CREATE_DATE,
                              STATUS, 
                              FILE_LEVEL, 
                              REF_JNO)
                        VALUES(SEQ_J_ATTACHMENT.NEXTVAL, 
                        '½ºÅ©¸°¼¦ 2023-03-16 100627.png', 
                        '2023061309592568786.png', 
                        'resources/upFiles/care_upfiles/', 
                        SYSDATE, 
                        'Y', 
                        1, 
                        SEQ_JOURNAL.CURRVAL);
         
--------------------------------------------------
---------------    ÈÄ±â Å×ÀÌºí ´õ¹Ì    --------------
--------------------------------------------------
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, 'Á¤¸» ³Ñ¸ð Á¶¿Í¿ë', '¾îÂÀ ÀÌ¸® ¼¶¼¼ÇÏ½ÅÁö..È«È«',
    SYSDATE, '¸¸Á·ÇÏ¼Ì´Ù´Ï ±âºÐÀÌ ÁÁ³×¿ä', SYSDATE, 'Y', NULL, 1);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, 'Á¤¸» ³Ñ¸ð Á¶¿Í¿ë', '¾îÂÀ ÀÌ¸® ¼¶¼¼ÇÏ½ÅÁö..È«È«',
    SYSDATE, '¸¸Á·ÇÏ¼Ì´Ù´Ï ±âºÐÀÌ ÁÁ³×¿ä', SYSDATE, 'Y', NULL, 2);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, 'Á¤¸» ³Ñ¸ð Á¶¿Í¿ë', '¾îÂÀ ÀÌ¸® ¼¶¼¼ÇÏ½ÅÁö..È«È«',
    SYSDATE, '¸¸Á·ÇÏ¼Ì´Ù´Ï ±âºÐÀÌ ÁÁ³×¿ä', SYSDATE, 'Y', NULL, 3);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, 'Á¤¸» ³Ñ¸ð Á¶¿Í¿ë', '¾îÂÀ ÀÌ¸® ¼¶¼¼ÇÏ½ÅÁö..È«È«',
    SYSDATE, '¸¸Á·ÇÏ¼Ì´Ù´Ï ±âºÐÀÌ ÁÁ³×¿ä', SYSDATE, 'Y', NULL, 4);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, 'Á¤¸» ³Ñ¸ð Á¶¿Í¿ë', '¾îÂÀ ÀÌ¸® ¼¶¼¼ÇÏ½ÅÁö..È«È«',
    SYSDATE, '¸¸Á·ÇÏ¼Ì´Ù´Ï ±âºÐÀÌ ÁÁ³×¿ä', SYSDATE, 'Y', NULL, 5);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, 'Á¤¸» ³Ñ¸ð Á¶¿Í¿ë', '¾îÂÀ ÀÌ¸® ¼¶¼¼ÇÏ½ÅÁö..È«È«',
    SYSDATE, '¸¸Á·ÇÏ¼Ì´Ù´Ï ±âºÐÀÌ ÁÁ³×¿ä', SYSDATE, 'Y', NULL, 6);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, 'Á¤¸» ³Ñ¸ð Á¶¿Í¿ë', '¾îÂÀ ÀÌ¸® ¼¶¼¼ÇÏ½ÅÁö..È«È«',
    SYSDATE, '¸¸Á·ÇÏ¼Ì´Ù´Ï ±âºÐÀÌ ÁÁ³×¿ä', SYSDATE, 'Y', NULL, 7);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, 'Á¤¸» ³Ñ¸ð Á¶¿Í¿ë', '¾îÂÀ ÀÌ¸® ¼¶¼¼ÇÏ½ÅÁö..È«È«',
    SYSDATE, '¸¸Á·ÇÏ¼Ì´Ù´Ï ±âºÐÀÌ ÁÁ³×¿ä', SYSDATE, 'Y', NULL, 8);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, 'Á¤¸» ³Ñ¸ð Á¶¿Í¿ë', '¾îÂÀ ÀÌ¸® ¼¶¼¼ÇÏ½ÅÁö..È«È«',
    SYSDATE, '¸¸Á·ÇÏ¼Ì´Ù´Ï ±âºÐÀÌ ÁÁ³×¿ä', SYSDATE, 'Y', NULL, 9);
INSERT INTO REVIEW VALUES(SEQ_REVIEW.NEXTVAL, 'Á¤¸» ³Ñ¸ð Á¶¿Í¿ë', '¾îÂÀ ÀÌ¸® ¼¶¼¼ÇÏ½ÅÁö..È«È«',
    SYSDATE, '¸¸Á·ÇÏ¼Ì´Ù´Ï ±âºÐÀÌ ÁÁ³×¿ä', SYSDATE, 'Y', NULL, 10);
       
       
--------------------------------------------------
-------------    °­¾ÆÁö Å×ÀÌºí ´õ¹Ì    ---------------
--------------------------------------------------
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'ÃÊ·ÕÀÌ',
       'M',
       '¼ÎÆÛµå',
       '20/04/12',
       12,
       'N',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       2);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '³ª·ÕÀÌ',
       'F',
       '¸»Æ¼Áî',
       '19/09/16',
       18,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       3);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'ÂÉ²¿¹Ì',
       'F',
       '¸»¶ó¹ÂÆ®',
       '22/12/01',
       21,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       4); 
       
--------------------------------------------------
--------------    °áÁ¦ Å×ÀÌºí ´õ¹Ì    --------------
--------------------------------------------------
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-02-01',
       'ÀÏÁÖÀÏ µ¥½¹',
       165000,
       DEFAULT,
       1);

INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-03-06',
       '°­¾ÆÁö¾²',
       300000,
       DEFAULT,
       2);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-03-27',
       '°»¾óÁã',
       550000,
       DEFAULT,
       3);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-04-15',
       '¸¹´Ù',
       55000,
       DEFAULT,
       4);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-04-20',
       '³Ñ¸¹¾î',
       110000,
       DEFAULT,
       5);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       '2023-05-15',
       'ÇÏ·ç´ÙÀÓ¸¶',
       55000,
       DEFAULT,
       6);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '¾¾´Ù¾¾',
       165000,
       DEFAULT,
       7);       
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       'ÆÈºìÂ°',
       220000,
       DEFAULT,
       8);
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '±¸¹øÂ°',
       55000,
       DEFAULT,
       9); 
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '¸¶Áö¸·',
       1100000,
       DEFAULT,
       10);       
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       'ÀÌ°Ô¹¹³Æ¸»ÀÔ´Ï´Ù',
       110000,
       DEFAULT,
       11);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       'ÀÌ°Ô¸Â³ª',
       550000,
       DEFAULT,
       12);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '¸ð¸£°Î´Ù',
       55000,
       DEFAULT,
       13);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       '¾Æ¸ô¶û',
       165000,
       DEFAULT,
       14);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       'ÆRÃP',
       1100000,
       DEFAULT,
       15);  
       
INSERT INTO PAYMENT       
VALUES(SEQ_PAYMENT.NEXTVAL,
       SYSDATE,
       'Èå¾ÆµÎ¿ìÀÚ',
       1100000,
       DEFAULT,
       16);         
           
--------------------------------------------------
--------------    Ã¤ÆÃ¹æ Å×ÀÌºí ´õ¹Ì    --------------
--------------------------------------------------
INSERT INTO CHAT_ROOM VALUES(SEQ_CHAT_ROOM.NEXTVAL,1,'°ü¸®ÀÚ', '/resources/upFiles/member_profiles/1.png', 'N', 'N', 2,'Æê½ÃÅÍ1', '/resources/upFiles/member_profiles/2.png', 'Y', 'Y');
INSERT INTO CHAT_ROOM VALUES(SEQ_CHAT_ROOM.NEXTVAL,3,'Æê½ÃÅÍ2','/resources/upFiles/member_profiles/3.png', 'N', 'N', 1,'°ü¸®ÀÚ', '/resources/upFiles/member_profiles/1.png', 'Y', 'Y');

--------------------------------------------------
--------------    ¸Þ¼¼Áö Å×ÀÌºí ´õ¹Ì    --------------
--------------------------------------------------
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '¸Þ¼¼Áö³»¿ë1', DEFAULT, 1, 1, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '¸Þ¼¼Áö³»¿ë2', DEFAULT, 1, 1, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '¸Þ¼¼Áö³»¿ë3', DEFAULT, 1, 1, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '¸Þ¼¼Áö³»¿ë1', DEFAULT, 2, 2, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '¸Þ¼¼Áö³»¿ë2', DEFAULT, 2, 2, DEFAULT);
INSERT INTO MESSAGE VALUES(SEQ_MESSAGE.NEXTVAL, '¸Þ¼¼Áö³»¿ë3', DEFAULT, 2, 2, DEFAULT);

----------------------------------------------------------------
--------------    Ä¿¹Â´ÏÆ¼ (ÀÏ¹Ý°Ô½ÃÆÇ) Å×ÀÌºí ´õ¹Ì    --------------
----------------------------------------------------------------
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ1', '°­¾ÆÁö»êÃ¥ ´Ù³à¿Ô¾î¿ä!!', SYSDATE, DEFAULT, DEFAULT, 1, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ2', '°­¾ÆÁö»êÃ¥ °£½ÄÃßÃµÀÌ¿ä!!', SYSDATE, DEFAULT, DEFAULT, 2, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ3', '°­¾ÆÁö ÀÔ¾çÇß¾î¿ä!!', SYSDATE, DEFAULT, DEFAULT, 3, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ4', '°­¾ÆÁö °¡Á·ÀÌ »ý°å¾î¿ä!!', SYSDATE, DEFAULT, DEFAULT, 4, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ5', 'µ¹µ¹ÀÌ¶û »êÃ¥ ´Ù³à¿Ô¾î¿ä!!', SYSDATE, DEFAULT, DEFAULT, 5, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ6', '°­¾ÆÁö °£½Ä ¸¸µé¾îºÁ¿ä!!', SYSDATE, DEFAULT, DEFAULT, 6, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ7', '°­¾ÆÁö °Ç°­½Ä ÀÚ¶ûÇØ¿ä!!', SYSDATE, DEFAULT, DEFAULT, 7, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ8', '¿ì¸® °­¾ÆÁöµéÀÌ ÁÁ¾ÆÇÏ´Â °£½Äµé ÃßÃµ!!', SYSDATE, DEFAULT, DEFAULT, 8, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ9', '¿À´Ãµµ Áñ°Å¿îÇÏ·ç!!', SYSDATE, DEFAULT, DEFAULT, 1, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ10', 'ºñ¿À´Â ³¯Àº °­¾ÆÁö¿Í ÇÔ²²!!', SYSDATE, DEFAULT, DEFAULT, 2, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ11', '»õ·Î¿î °¡Á·ÀÌ »ý°å¾î¿ä!!', SYSDATE, DEFAULT, DEFAULT, 8, 1, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ12', '°­¾ÆÁö¿Í µ¿°ÅÇÏ´Â °í¾çÀÌ!!', SYSDATE, DEFAULT, DEFAULT, 7, 1, 1);

----------------------------------------------------------------
--------------    Ä¿¹Â´ÏÆ¼ (»çÁø°Ô½ÃÆÇ) Å×ÀÌºí ´õ¹Ì    --------------
----------------------------------------------------------------
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ1', 'ºñ¿À´Â³¯ °­¾ÆÁö »çÁø!!', SYSDATE, DEFAULT, DEFAULT, 5, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ2', '°­¾ÆÁö¿Í ³ªÀÇ Ãß¾ï!!', SYSDATE, DEFAULT, DEFAULT, 6, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ3', 'µî»ê¼¿Ä« ÀÚ¶ûÇØ¿ä!!', SYSDATE, DEFAULT, DEFAULT, 7, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ4', '°­¾ÆÁö Áõ¸í»çÁø Âï¾ú¾î¿ä!!', SYSDATE, DEFAULT, DEFAULT, 8, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ5', '°­¾ÆÁö »êÃ¥¸ðÀÓ¿¡¼­ ÀÎÁõ¼¦!!', SYSDATE, DEFAULT, DEFAULT, 3, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ6', '¿©¸§¿¡ °­¾ÆÁö °£½ÄÀ¸·Î ¼ö¹ÚÃßÃµ!!', SYSDATE, DEFAULT, DEFAULT, 6, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ7', '¿ì¸® °­¾ÆÁö ¾Ö±â»çÁø!!', SYSDATE, DEFAULT, DEFAULT, 7, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ8', '¿ì¸® °­¾ÆÁöµéÀÌ ÁÁ¾ÆÇÏ´Â °£½Äµé ÃßÃµ!!', SYSDATE, DEFAULT, DEFAULT, 4, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ9', '¿À´Ãµµ Áñ°Å¿îÇÏ·ç!!', SYSDATE, DEFAULT, DEFAULT, 8, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ10', '°í¾çÀÌ¿Í °­¾ÆÁö!!', SYSDATE, DEFAULT, DEFAULT, 2, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ11', '°­¾ÆÁö ¿µ¾ç½Ä ÀÎÁõ¼¦!!', SYSDATE, DEFAULT, DEFAULT, 3, 2, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD.NEXTVAL, 'Á¦¸ñ12', '¿©¸§¿¡ °­¾ÆÁö º¸¾ç½Ä ¸¸µé¾ú¾î¿ä!!', SYSDATE, DEFAULT, DEFAULT, 1, 2, 1);


--------------------------------------------------
-----------------    Ä¿¹Ô±¸¹®    ------------------
--------------------------------------------------
         
 COMMIT;