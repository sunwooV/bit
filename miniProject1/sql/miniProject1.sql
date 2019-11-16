-------------------------
-- Create Customers table
-------------------------
CREATE TABLE guestbook_message
(
  message_id   int  NOT NULL ,
  guest_name   varchar2(50)  NOT NULL ,
  password     varchar2(10)  NOT NULL ,
  message      varchar2(4000)  NOT NULL
);

CREATE TABLE member
(
  member_id   varchar2(50)  NOT NULL ,
  name       varchar2(50)  NOT NULL ,
  password   varchar2(10)  NOT NULL ,
  answer     varchar2(50)  NOT NULL ,
  regdate    timestamp  NOT NULL
);

CREATE TABLE article
(
  article_no int  NOT NULL ,
  writer_id   varchar2(50)  NOT NULL ,
  writer_name varchar2(50)  NOT NULL ,
  title      varchar2(255)  NOT NULL ,
  password     varchar2(10)  NOT NULL ,
  regdate    timestamp  NOT NULL,
  moddate    timestamp  NOT NULL,
  read_cnt   int  NULL
);

CREATE TABLE article_content
(
  article_no int  NOT NULL ,
  content    varchar2(4000)  NULL
);

----------------------
-- Define primary keys
----------------------
ALTER TABLE guestbook_message ADD CONSTRAINT PK_guestbook_message PRIMARY KEY (message_id);
ALTER TABLE member ADD CONSTRAINT PK_member PRIMARY KEY (member_id);
ALTER TABLE article ADD CONSTRAINT PK_article PRIMARY KEY (article_no);
ALTER TABLE article_content ADD CONSTRAINT PK_article_content PRIMARY KEY (article_no);

create sequence message_id_seq start with 1 increment BY 1 maxvalue 10000;
create sequence memberid_seq start with 1 increment BY 1 maxvalue 10000;
create sequence article_no_seq start with 1 increment BY 1 maxvalue 10000;

commit;
