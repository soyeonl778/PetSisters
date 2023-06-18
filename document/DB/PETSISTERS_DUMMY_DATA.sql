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
°¨»çÇÕ´Ï´Ù.', '2023-06-01', 777, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[¾È³»] 6¿ù °í°´¼¾ÅÍ ÈÞ¹« ÀÏÁ¤ ¾È³»',
'¾È³çÇÏ¼¼¿ä Æê½Ã½ºÅÍÁîÀÔ´Ï´Ù. <br/> Ç×»ó Æê½Ã½ºÅÍÁî¸¦ ÀÌ¿ëÇØÁÖ½Ã´Â º¸È£ÀÚ´Ôµé²² Áø½ÉÀ¸·Î °¨»çµå¸³´Ï´Ù. <br/><br/>
2023³â 6¿ù °í°´¼¾ÅÍ ÈÞ¹« ÀÏÁ¤ ¾È³» µå¸³´Ï´Ù. <br/>
º¸È£ÀÚ´ÔÀÇ ¾çÇØ ºÎÅ¹µå¸®¸ç, ¾Æ·¡ ³»¿ë È®ÀÎÇÏ¼Å¼­ ÀÌ¿ë¿¡ ºÒÆí ¾øÀ¸½Ã±â¸¦ ¹Ù¶ø´Ï´Ù. <br/><br/>
¡Ü ÇöÃæÀÏ : 2023. 06. 06(È­) °í°´¼¾ÅÍ ÈÞ¹« <br/><br/>
¹®ÀÇ±Û¿¡ ´ëÇÑ ´äº¯Àº 6¿ù 7ÀÏ(¼ö)ºÎÅÍ ¼øÂ÷ÀûÀ¸·Î Á¦°øµË´Ï´Ù. <br/><br/>
°¨»çÇÕ´Ï´Ù.', '2023-06-05', 486, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[Á¤º¸] ¿À´ÃÀº ¹Ý·Áµ¿¹°ÀÇ ³¯',
'¿À´ÃÀº ¹Ý·Áµ¿¹°ÀÇ ³¯ÀÌ¿¡¿ä. ÀÌ¸§ºÎÅÍ ±Í¿±Áö ¾Ê³ª¿ä? <br/> ¾È ±Í¿±´Ù°í? ±×·²¸®°¡ ¾ø´Âµ¥... <br/><br/>', '2023-06-06', 120, 'Y');
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
´õ¿î ¿©¸§, °Ç°­ÇÏ°Ô Áñ±â¸ç Áö³¾ ¼ö ÀÖµµ·Ï º¸È£ÀÚ´ÔµéÀÌ Àß Ã¬±â½Ã¸é ÁÁ°Ú½À´Ï´Ù.', '2023-06-10', 404, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[¼­ºñ½º] ¼­ºñ½º ¿¹¾à º¯°æ ¹× Ãë¼Ò', 
'¿¹¾à º¯°æ <br/>
? µ¹º½ 3ÀÏ Àü : º¯°æ °¡´É <br/>
? µ¹º½ 1~2ÀÏ Àü : °áÁ¦ ±Ý¾×ÀÇ 20% ¼ö¼ö·á ¹ß»ý <br/>
? µ¹º½ ´çÀÏ : º¯°æ ºÒ°¡ <br/><br/>
¿¹¾à Ãë¼Ò <br/>
? µ¹º½ 3ÀÏ Àü : Àü¾× È¯ºÒ <br/>
? µ¹º½ 1~2ÀÏ Àü : °áÁ¦ ±Ý¾×ÀÇ 50% È¯ºÒ <br/>
? µ¹º½ ½ÃÀÛ 3½Ã°£ Àü : °áÁ¦ ±Ý¾×ÀÇ 20% È¯ºÒ <br/>
? µ¹º½ ½ÃÀÛ 3½Ã°£ ÀÌ³» : È¯ºÒ±Ý ¾øÀ½ <br/><br/>
* ¼ö¼ö·á´Â ÇÒÀÎ Àü Ã»±¸±Ý¾×À» ±âÁØÀ¸·Î ÇÕ´Ï´Ù.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[¾È³»] Ã¤ÆÃÀÌ ¹º°¡¿ä?', 
'°í°´´Ô°ú Æê½ÃÅÍÀÇ °³ÀÎÁ¤º¸ º¸È£¸¦ À§ÇÑ ¾Û ³» Àü¿ë Ã¤ÆÃÀ¸·Î ¾ÆÀÌ¿¡ ´ëÇÑ Ãß°¡Á¤º¸ µîÀ» Æê½ÃÅÍ¿Í ÀÌ¾ß±â ÇÒ ¼ö ÀÖ´Â Ã¤ÆÃ ½Ã½ºÅÛÀÔ´Ï´Ù.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[¾È³»] Ã¤ÆÃ¹æÀº ¾ðÁ¦ °³¼³µÇ³ª¿ä?', 
'? Æê½ÃÅÍ°¡ ¹èÁ¤µÇ°í °áÁ¦ ÈÄ ¿¹¾à ¿Ï·á°¡ µÇ¸é ÀÚµ¿À¸·Î Ã¤ÆÃ¹æÀÌ ¿ÀÇÂµË´Ï´Ù.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[¾È³»] ÃâÀÔ ºñ¹Ð¹øÈ£ µî Á¤º¸ À¯ÃâÀÌ °ÆÁ¤µÉ ¶§', 
'ÃâÀÔ ºñ¹Ð¹øÈ£´Â Æê½Ã½ºÅÍÁî ¼­¹ö¿¡µµ ÀúÀåµÇÁö ¾ÊÀ¸¸ç, µ¹º½Á¾·á ½Ã ÀÚµ¿À¸·Î ¼Ò¸êµË´Ï´Ù. <br/><br/>
¶ÇÇÑ, ¹æ¹®Æê½ÃÅÍµµ °³ÀÎÁ¤º¸ÀÇ Áß¿ä¼ºÀ» ÀÎÁöÇÑ Æê½ÃÅÍ¸¸ ¿î¿µ ÁßÀÔ´Ï´Ù.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[¼­ºñ½º] Æê½ÃÆÃ ´çÀÏ ¿¹¾à', 
'³×. ´çÀÏ ¿¹¾àµµ °¡´ÉÇÕ´Ï´Ù. <br/><br/>
±×·¯³ª ¿¹¾àÀ» ´õ¿í ¾ÈÀüÇÏ°Ô È®Á¤ÇÏ±â À§ÇØ¼­´Â ÃÖ¼Ò 3ÀÏ Àü¿¡ ¹Ì¸® ¿¹¾àÇÏ´Â °ÍÀ» ÃßÃµµå¸³´Ï´Ù.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[¾È³»] Æê½ÃÅÍ´ÔµéÀº ¹ÏÀ» ¼ö ÀÖ³ª¿ä?', 
'±î´Ù·Î¿î ½Å¿ø °ËÁõ ¹× ±¹³» ÃÖ°í ¹Ý·Áµ¿¹° Àü¹®°¡ÀÇ ±³À°À» ¼ö·áÇÑ 10% ¹Ì¸¸ÀÇ ÇÕ°ÝÀÚ¸¸ÀÌ Æê½Ã½ºÅÍÁî Æê½ÃÅÍ·Î È°µ¿ÇÏ°í ÀÖ½À´Ï´Ù. <br/> ¶ÇÇÑ, Æê½Ã½ºÅÍÁî Æê½ÃÅÍµé ¸ðµÎ °í°´´ÔµéÀÌ ¾È½ÉÇÏ½Ç ¼ö ÀÖµµ·Ï, ¸ðµç µ¹º½ °úÁ¤À» ½Ç½Ã°£À¸·Î ÃÔ¿µÇÏ´Â °Í¿¡ µ¿ÀÇÇÏ¸ç, ÃÑ 4°¡ÁöÀÇ ¼­·ù Á¦ÃâÀ» ÀÇ¹«È­ ÇÏ°í ÀÖ½À´Ï´Ù. <br/> ½Å¿ø º¸ÁõÀÎ ºÎ´ë¿Í ½ÅºÐÁõ »çº»À» ÅëÇØ ½Å¿øÀ» °ËÁõÇÏ°í, ºñ¹ÐÀ¯Áö ¼­¾à¼­·Î °í°´´ÔÀÇ °³ÀÎ Á¤º¸¸¦ ¾ÈÀüÇÏ°Ô º¸È£ÇÒ °ÍÀ» ¹ýÀûÀ¸·Î ¾à¼ÓÇÕ´Ï´Ù. <br/> ¶ÇÇÑ, Æê½ÃÅÍ °è¾à¼­¸¦ ÅëÇØ, Æê½Ã½ºÅÍÁî ¼Ò¼ÓÀ¸·Î È°µ¿ ÁßÀÎ Æê½ÃÅÍ´ÔµéÀ» Áö¼ÓÀûÀ¸·Î °ü¸®ÇÏ°í ÀÖ½À´Ï´Ù.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[¾È³»] Æê½Ã½ºÅÍÁî Æê½ÃÅÍÀÇ Â÷º°Á¡Àº ¹«¾ùÀÎ°¡¿ä?', 
'* ´õ ¾ÈÀüÇÑ Æê½ÃÆÃÀ» À§ÇÑ Æê½ÃÅÍ ÇïÇÁ ½Ã½ºÅÛ <br/>
- Æê½ÃÆÃ½Ã ¾î·Á¿î Á¡¿¡ °üÇØ ÈÆ·Ã»ç´Ô ¹«·á ÀüÈ­ »ó´ã <br/>
- À§Çè »óÈ²½Ã ¹æ¹® ¼Ö·ç¼ÇÀ¸·Î ¾ÈÀüÇÑ Æê½ÃÆÃ Áö¿ø <br/>
- Æê½ÃÆÃ °ü·Ã Áö¼ÓÀûÀÎ ±³À° ¿¬°è ¹× ÇÇµå¹é ¼ö¸³ <br/> <br/>
* 10¸¸¿ø »ó´çÀÇ Æê½ÃÅÍ ¿ëÇ° Áö¿ø, ½ºÅ¸ÅÍÅ¶À» ¹«·á·Î µå·Á¿ä <br/>
- Æê½ÃÅÍ´Ô È«º¸¸¦ À§ÇÑ ¸íÇÔ ÁõÁ¤ <br/>
- Æê½Ã½ºÅÍÁî À¯´ÏÆû (¸ÇÅõ¸Ç, ¹Ù¶÷¸·ÀÌ, Æ¼¼ÅÃ÷) ÁõÁ¤ <br/>
- »êÃ¥°¡¹æ, ¹èº¯ºÀÅõ, Å»ÃëÁ¦, ¼Õ¼Òµ¶Á¦ µî ÁõÁ¤ <br/>
- Ç×¸ñÀº º¯°æµÉ ¼ö ÀÖ½À´Ï´Ù <br/> <br/>
* ±¹³» Æê½ÃÆÃ ¾÷Á¾ À¯ÀÏ Æê½ÃÅÍ º¸ÇèÀ» Áö¿øÇÕ´Ï´Ù. <br/>
- ¹Ý·Áµ¿¹°¿¡ ÀÇÇØ Æê½ÃÅÍ´ÔÀÌ »óÇØ¸¦ ÀÔ¾úÀ» °æ¿ì, ÃÖ´ë 1È¸ 10¸¸¿øÀÇ º´¿ø Áø·áºñ¸¦ Áö¿øÇÕ´Ï´Ù. <br/>
- ÇØ´ç ¹Ý·Áµ¿¹°ÀÌ ´ÙÃÆÀ» °æ¿ì, ÃÖ´ë 100¸¸¿ø±îÁö Áö¿ø (Æê½ÃÅÍ´ÔÀÇ ±ÍÃ¥ »çÀ¯ÀÏ °æ¿ì º¸Çè Áö¿ø ºÒ°¡)', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[¼­ºñ½º] Æê½ÃÅÍ´Â È®Á¤µÈ ¿¹¾àÀ» Ãë¼ÒÇÒ ¼ö ÀÖ³ª¿ä?', 
'Æê½ÃÅÍ °è¾à¿¡ µû¶ó ¿øÄ¢ÀûÀ¸·Î Æê½ÃÅÍ´Â È®Á¤µÈ ¿¹¾àÀ» Ãë¼ÒÇÒ ¼ö ¾ø½À´Ï´Ù. <br/>
¸¸¾à ±ÍÃ¥ »çÀ¯·Î Ãë¼Ò¸¦ ÇÒ °æ¿ì¿¡´Â ÆÐ³ÎÆ¼°¡ ºÎ°¡µË´Ï´Ù.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[Æê½ÃÅÍ] ¹Ý·Á°ßÀ» Å°¿öº¸Áö ¾Ê¾Ò´Âµ¥, Áö¿øÀÌ °¡´ÉÇÑ°¡¿ä?', 
'¹Ý·Á°ßÀ» Å°¿î °æÇèÀÌ ¾ø¾îµµ Áö¿øÀÌ °¡´ÉÇÕ´Ï´Ù. <br/>
Æê½Ã½ºÅÍÁî¿¡¼­´Â ¹Ý·Á°ß¿¡ ´ëÇÑ Àü¹® ±³À°À» ½Ç½ÃÇÏ¸ç, <br/>
ºÐ±â¸¶´ÙÀÇ Á¤±â ±³À°µµ ÁøÇàÇÒ ¿¹Á¤ÀÌ¹Ç·Î °ÆÁ¤ÇÏÁö ¸»°í Áö¿ø ºÎÅ¹µå¸³´Ï´Ù.', '2023-06-18', 0, 'Y');
INSERT INTO NOTICE VALUES (SEQ_NOTICE.NEXTVAL, '[°øÁö] °³ÀÎÁ¤º¸ Ã³¸®¹æÄ§ °³Á¤µË´Ï´Ù.', 
'¾È³çÇÏ¼¼¿ä Æê½Ã½ºÅÍÁîÀÔ´Ï´Ù. <br/>
Ç×»ó Æê½Ã½ºÅÍÁî¸¦ ÀÌ¿ëÇØÁÖ½Ã´Â º¸È£ÀÚ´Ôµé²² Áø½ÉÀ¸·Î °¨»ç ÀÎ»ç¸¦ µå¸®¸ç, <br/>
°³ÀÎÁ¤º¸ Ã³¸®¹æÄ§À» °³Á¤ÇÏ°Ô µÇ¾î ¾È³»µå¸³´Ï´Ù. <br/>
º¯°æ ½ÃÇàÀÏ°ú º¯°æ »çÇ×Àº ¾Æ·¡¿Í °°½À´Ï´Ù. <br/> <br/>
[º¯°æ ½ÃÇàÀÏ] <br/>
º¯°æ °ø°íÀÏ : 2023³â 6¿ù 20ÀÏ <br/>
º¯°æ ½ÃÇàÀÏ : 2023³â 7¿ù 1ÀÏ <br/> <br/>
º» °³Á¤¿¡ µ¿ÀÇÇÏÁö ¾ÊÀ¸½Ç °æ¿ì, <br/>
°³Á¤ ½ÃÇàÀÏÀÎ 2023³â 7¿ù 1ÀÏ ÀÌÀü±îÁö º» °³Á¤¿¡ ´ëÇÑ °ÅºÎÀÇ»ç¸¦ Ç¥½ÃÇÏ°í, Æê½Ã½ºÅÍÁî¸¦ Å»ÅðÇÒ ¼ö ÀÖ½À´Ï´Ù. <br/> <br/>
°³Á¤ ½ÃÇàÀÏ ÀÌÈÄ¿¡µµ °ÅºÎ ÀÇ»ç¸¦ Ç¥½ÃÇÏÁö ¾Ê°í ¼­ºñ½º¸¦ ÀÌ¿ëÇÏ´Â °æ¿ì º¯°æ¿¡ µ¿ÀÇÇÑ °ÍÀ¸·Î °£ÁÖÇÕ´Ï´Ù. <br/> <br/>
Æê½Ã½ºÅÍÁî´Â ¾ÕÀ¸·Îµµ È¸¿øºÐµéÀÌ ´õ ÁÁÀº ¼­ºñ½º¸¦ ÀÌ¿ëÇÏ½Ç ¼ö ÀÖµµ·Ï ÃÖ¼±ÀÇ ³ë·ÂÀ» ´ÙÇÏ°Ú½À´Ï´Ù. <br/> °¨»çÇÕ´Ï´Ù.', '2023-06-20', 0, 'Y');

--------------------------------------------------
------------    1:1¹®ÀÇ Å×ÀÌºí ´õ¹Ì    ------------
--------------------------------------------------
INSERT INTO INQUIRY
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, FILE_PATH, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , 'Æê½ÃÆÃ ÀÌÈÄ¿¡ ¾ø´ø »óÃ³°¡ »ý°å¾î¿ä'
           , 'Á¦ÀÏ ÃÖ±Ù¿¡ ¸Ã±ä Æê½ÃÆÃ ÀÌÈÄ·Î ¾È º¸ÀÌ´ø »óÃ³¸¦ ¹ß°ßÇß¾î¿ä. <br/>
             Æê½ÃÅÍ ºÐ²² Àü´Þ¹ÞÀº ³»¿ëÀº ¾ø¾ú°í¿ä. <br/>
             º´¿ø¿¡ °¡º¼ Á¤µµ´Â ¾Æ´ÏÁö¸¸ ÄÉ¾îÇÏ½Ã¸é¼­ ¾Ë¾ÆÃ¤Áö ¸øÇÒ Á¤µµ´Â ¾Æ´Ï¾úÀ» °Í °°Àºµ¥ ¹«½¼ ÀÏÀÌ¾ú´ÂÁö Á» ¾Ë°í ½Í¾î¿ä.'
           , '2023-06-07'
           , 'Y'
           , 'resources/upFiles/inquiry_upfiles/°­¾ÆÁöÁ©¸®.png'
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
(I_NO, I_TITLE, I_CONTENT, CREATE_DATE, STATUS, FILE_PATH, USER_NO)
VALUES (SEQ_INQUIRY.NEXTVAL
           , '¾ÆÀÌ ÇÏ³×½º ÁÙÀÌ ¹Ù²ï °Í °°¾Æ¿ä.'
           , 'Æê½ÃÆÃ ¸Ã±â¸é¼­ °°ÀÌ µå·È´ø ÇÏ³×½ºÁÙÀÌ ÀÖ¾ú´Âµ¥, ¿ø·¡ ¾²´ø °Ô ¾Æ´Ï¶ó¼­¿ä. <br/>
             µÎ °³ »ö±òÀÌ °°¾Æ¼­ Çò°¥¸®½Å °Í °°Àºµ¥ Æê½ÃÅÍ ºÐ²² °³ÀÎÀûÀ¸·Î ¿¬¶ô µå¸± ¹æ¹ýÀÌ ÀÖÀ»±î¿ä?'
           , SYSDATE
           , 'Y'
           , 'resources/upFiles/inquiry_upfiles/ÇÏ³×½º.jpg'
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
----------    1:1¹®ÀÇ ´ñ±Û Å×ÀÌºí ´õ¹Ì    ----------
--------------------------------------------------
INSERT INTO CS_REPLY
(REP_NO, REP_CONTENT, USER_NO, REF_INO, CREATE_DATE)
VALUES(SEQ_CS_REPLY.NEXTVAL
         ,'¾È³çÇÏ¼¼¿ä, ¿¹¾à ÀÏÁ¤À» ¹Ì·ê ¼ö ÀÖ´Â Áö ¹®ÀÇ ÁÖ¼Ì½À´Ï´Ù. ÇØ´çÀÏ¿¡ Æê½ÃÅÍ ´ÔÀÇ ÀÏÁ¤ÀÌ ¾øÀ¸½Ã´Ù¸é Ãë¼Ò ÈÄ Àç¿¹¾à °¡´ÉÇÕ´Ï´Ù. ÀúÈñ Ãø¿¡¼­ µû·Î ¹Ì·ïµå¸± ¼ö´Â ¾ø´Â Á¡ ¾çÇØ ºÎÅ¹µå¸³´Ï´Ù. °¨»çÇÕ´Ï´Ù.'
         ,1         
         ,2
         ,'2023-06-14');
INSERT INTO CS_REPLY
(REP_NO, REP_CONTENT, USER_NO, REF_INO, CREATE_DATE)
VALUES(SEQ_CS_REPLY.NEXTVAL
         ,'¾Æ... ¾Ë°Ú½À´Ï´Ù. ¿¹¾àÀÌ ÀÏÁÖÀÏ ¹Û¿¡ ¾È ³²¾Ò´Âµ¥ Ãë¼Ò ¼ö¼ö·á´Â ¹«Á¶°Ç ºÎ´ãÇØ¾ßÇÏ´Â °ÅÁÒ?'
         ,7
         ,2
         ,'2023-06-14');
INSERT INTO CS_REPLY
(REP_NO, REP_CONTENT, USER_NO, REF_INO, CREATE_DATE)
VALUES(SEQ_CS_REPLY.NEXTVAL
         ,'¾È³çÇÏ¼¼¿ä, Àç¿¹¾à ½Ã ¼ö¼ö·á ºÎ°ú¿Í °ü·ÃÇØ¼­ ¹®ÀÇ ÁÖ¼Ì½À´Ï´Ù. ¿¹¾à Ãë¼Ò ÈÄ Àç¿¹¾à È®Á¤ ½Ã ¼ö¼ö·á´Â È¯ºÒµË´Ï´Ù. °¨»çÇÕ´Ï´Ù.'
         ,1         
         ,2
         ,'2023-06-14');  
      
INSERT INTO CS_REPLY
(REP_NO, REP_CONTENT, USER_NO, REF_INO, CREATE_DATE)
VALUES(SEQ_CS_REPLY.NEXTVAL
         ,'¾È³çÇÏ¼¼¿ä, ÇÏ³×½º ÁÙÀÌ ¹Ù²î¼Ì´Ù°í ¹®ÀÇ ÁÖ¼Ì´Âµ¥ °ü·ÃÇØ¼­ ÇØ´ç Æê½ÃÅÍ ´Ô¿¡°Ô Àü´ÞÇØµå·È½À´Ï´Ù. ÃÖ´ëÇÑ »¡¸® ÇØ°áÇÏ½Ç ¼ö ÀÖµµ·Ï ´Ã ÃÖ¼±À» ´ÙÇÏ°Ú½À´Ï´Ù. °¨»çÇÕ´Ï´Ù.'
         ,1         
         ,6
         ,SYSDATE); 
INSERT INTO CS_REPLY
(REP_NO, REP_CONTENT, USER_NO, REF_INO, CREATE_DATE)
VALUES(SEQ_CS_REPLY.NEXTVAL
         ,'Æê½ÃÅÍ´Ô²² ¿¬¶ô µå·È½À´Ï´Ù. ÃÖ´ëÇÑ ºü¸£°í Á¤È®ÇÏ°Ô »óÈ² ÆÄ¾Ç ÈÄ ´Ù½Ã ¿¬¶ô µå¸®°Ú½À´Ï´Ù. °¨»çÇÕ´Ï´Ù.'
         ,7         
         ,1
         ,'2023-06-07');
 
--------------------------------------------------
------------    Æê½ÃÅÍÂò Å×ÀÌºí ´õ¹Ì    ------------
--------------------------------------------------
INSERT INTO P_LIKE
VALUES (1, 2);
INSERT INTO P_LIKE
VALUES (3, 2);
INSERT INTO P_LIKE
VALUES (5, 2);
INSERT INTO P_LIKE
VALUES (7, 2);
INSERT INTO P_LIKE
VALUES (8, 2);

INSERT INTO P_LIKE
VALUES (2, 3);
INSERT INTO P_LIKE
VALUES (4, 3);
INSERT INTO P_LIKE
VALUES (6, 3);
INSERT INTO P_LIKE
VALUES (8, 3);

INSERT INTO P_LIKE
VALUES (1, 4);
INSERT INTO P_LIKE
VALUES (2, 4);
INSERT INTO P_LIKE
VALUES (5, 4);
INSERT INTO P_LIKE
VALUES (6, 4);
INSERT INTO P_LIKE
VALUES (8, 4);

INSERT INTO P_LIKE
VALUES (1, 5);
INSERT INTO P_LIKE
VALUES (2, 5);
INSERT INTO P_LIKE
VALUES (4, 5);
INSERT INTO P_LIKE
VALUES (5, 5);
INSERT INTO P_LIKE
VALUES (7, 5);
INSERT INTO P_LIKE
VALUES (8, 5);

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
----------    ¿¹¾àºÒ°¡´É³¯Â¥ Å×ÀÌºí ´õ¹Ì    ----------
--------------------------------------------------   
INSERT INTO IMPOSSIBLE_DATE VALUES ('2023-06-18', 1);
INSERT INTO IMPOSSIBLE_DATE VALUES ('2023-06-19', 2);

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
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '±¸¸§ÀÌ',
       'M',
       '»ç¸ð¿¹µå',
       '19/08/13',
       19,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       2);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'Àý¹Ì',
       'M',
       '¹Í½º°ß',
       '18/03/28',
       13,
       'N',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       2);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'ÃÊÄÚ',
       'F',
       'Çªµé',
       '14/10/04',
       10,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       2);
       
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'ÇØÇÇ',
       'M',
       '²¿¶Ëµå¶Ô·¹',
       '19/11/11',
       8,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       3);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '¹¶Ä¡',
       'F',
       '½Ã¹Ù°ß',
       '17/01/09',
       12,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       3);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'Å¥Æ¼',
       'F',
       'À£½ÃÄÚ±â',
       '20/07/25',
       14,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       3);

INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'ÄíÅ°',
       'M',
       'ºÒµ¶',
       '21/06/06',
       16,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       4);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'ÄíÅ°',
       'M',
       'À£½ÃÄÚ±â',
       '22/10/30',
       7,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       4);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'Á¶´ÜÀÌ',
       'F',
       'Çªµé',
       '23/01/11',
       8,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       4);
       
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'ÄáÀÌ',
       'M',
       'Áøµ¾°³',
       '19/05/16',
       17,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       5);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '´Þ·¡',
       'F',
       '½ÃÃò',
       '21/02/14',
       6,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       5);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'º½ÀÌ',
       'F',
       '¸»Æ¼Çª',
       '22/12/22',
       5,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       5);
       
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'ÄíÅ°',
       'M',
       '¸»Æ¼Áî',
       '17/09/09',
       9,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       6);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'À¯µð´Ï',
       'F',
       '²¿¶ËµåÅø·¹',
       '21/11/11',
       8,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       6);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'Á¶´ÜÀÌ',
       'F',
       'Çªµé',
       '23/01/11',
       8,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       6);
       
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '¶×ÀÌ',
       'F',
       'Çªµé',
       '19/04/18',
       10,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       7);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '´ÞÄáÀÌ',
       'F',
       '´Ú½ºÈÆÆ®',
       '21/07/07',
       7,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       7);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '»õ·ÒÀÌ',
       'M',
       'ºñ¼õ',
       '23/02/08',
       3,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       7);
       
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       '¹Ùºñ',
       'F',
       'ºñ¼õ',
       '16/05/30',
       9,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       8);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'À²ÀÌ',
       'M',
       '½´³ª¿ìÀú',
       '18/11/07',
       8,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       8);
INSERT INTO DOG
VALUES(SEQ_DOG.NEXTVAL,
       'ÃÊ·ÕÀÌ',
       'M',
       'ÆÛ±×',
       '22/04/23',
       6,
       'Y',
       NULL,
       'resources/upFiles/dog_profiles/·ÎÀÌ.jpg',
       'Y',
       8);
       
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