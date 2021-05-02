USE excite_study;

SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;

-- 役職マスタ
insert into MST_POSITIONS (NAME, DISPLAY_ORDER, CREATE_USER) values('リーダー', 1, 'INIT');
insert into MST_POSITIONS (NAME, DISPLAY_ORDER, CREATE_USER) values('チーフコンサルタント', 2, 'INIT');
insert into MST_POSITIONS (NAME, DISPLAY_ORDER, CREATE_USER) values('シニアエキスパート', 3, 'INIT');
insert into MST_POSITIONS (NAME, DISPLAY_ORDER, CREATE_USER) values('サブリーダー', 4, 'INIT');

-- 従業員
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('051101', 'shouji6484@gmykqd.ylh', '猪股', '昭次', 'イノマタ', 'ショウジ', '1992-02-02', '2005-11-14', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('960901', 'ryuuhei_akiba@nqxhr.bkd', '秋葉', '龍平', 'アキバ', 'リュウヘイ', '1975-12-03', '1996-09-03', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('130601', 'shouichirou08912@encavok.horic.tjr', '谷村', '昌一郎', 'タニムラ', 'ショウイチロウ', '1996-06-25', '2013-06-04', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('101001', 'Akira_Hisano@srrseuwl.qjaov.ucw', '久野', '朗', 'ヒサノ', 'アキラ', '1979-03-09', '2010-10-25', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('150401', 'kouzou_miyata@yowl.rc.lt', '宮田', '孝三', 'ミヤタ', 'コウゾウ', '1973-10-07', '2015-04-15', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('990101', 'Natsuko_Miyasaka@iajx.egg', '宮坂', '夏子', 'ミヤサカ', 'ナツコ', '1994-10-16', '1999-01-17', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('991101', 'yuu305@jrfgrjsbn.pul.jt', '大森', '優', 'オオモリ', 'ユウ', '1963-10-28', '1999-11-05', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('120301', 'yoshiharu87317@zvwph.soerg.fij', '金森', '義治', 'カナモリ', 'ヨシハル', '1985-10-23', '2012-03-05', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('060801', 'kousaku098@pohplqid.od', '池上', '幸作', 'イケガミ', 'コウサク', '1972-02-27', '2006-08-09', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('091102', 'yuri28191@udvp.vll', '内田', '由梨', 'ウチダ', 'ユリ', '1984-03-08', '2009-11-25', 'INIT');

-- 従業員-役職紐付け
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='猪股'), 1 );
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='秋葉'), 1 );
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='久野'), 2 );
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='宮坂'), 3 );
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='金森'), 4 );
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='谷村'), 4 );
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='内田'), 4 );
