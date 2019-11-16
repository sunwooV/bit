drop table tag;
drop table prod_photo;
drop table product;

CREATE TABLE category (
    category_code char(3) not null,
    category_name varchar(50) not null,
    high_category char(3),
    
    CONSTRAINT category_pk PRIMARY KEY (category_code)
);

CREATE TABLE product(
    prod_number number not null,
    prod_group char(3) not null,
    prod_category_code char(3) not null,
    memberId varchar(10) not null,
    prod_price number not null,
    prod_amount number not null,
    prod_title varchar(20) not null,
    send_way char(2) not null,
    post_date date not null,
    edit_date date,
    sale_percent number,
    buy_price number not null,
    direct_area varchar(20) not null,
    auction_date date,
    aution_bid number,
    aution_start_date date,
    aution_end_date date,
    
    CONSTRAINT product_pk PRIMARY KEY (prod_number),
    CONSTRAINT product_fk FOREIGN KEY (prod_category_code) REFERENCES category(category_code)
);

CREATE TABLE prod_photo(
    prod_number number not null,
    photo1 blob not null,
    photo2 blob not null,
    photo3 blob not null,
    photo4 blob,
    photo5 blob,
    
    CONSTRAINT prod_photo_pk PRIMARY KEY (prod_number),
    CONSTRAINT prod_photo_fk FOREIGN KEY (prod_number) REFERENCES product(prod_number)
);

CREATE TABLE tag(
    prod_number number not null,
    tag1 varchar(20),
    tag2 varchar(20),
    tag3 varchar(20),
    tag4 varchar(20),
    tag5 varchar(20),
    
    CONSTRAINT tag_pk PRIMARY KEY (prod_number),
    CONSTRAINT tag_fk FOREIGN KEY (prod_number) REFERENCES product(prod_number)
);


--��з�
INSERT INTO category(category_code, category_name, high_category)
values('b01', '�м��Ƿ�', null);
INSERT INTO category(category_code, category_name, high_category)
values('b02', '��Ƽ ��ȭ', null);
INSERT INTO category(category_code, category_name, high_category)
values('b03', '���� ��ǰ', null);
INSERT INTO category(category_code, category_name, high_category)
values('b04', '���� ��Ȱ', null);
INSERT INTO category(category_code, category_name, high_category)
values('b05', '��� �÷���', null);
INSERT INTO category(category_code, category_name, high_category)
values('b06', '������', null);
INSERT INTO category(category_code, category_name, high_category)
values('b07', '��ǻ��', null);
INSERT INTO category(category_code, category_name, high_category)
values('b08', '������ ����', null);
INSERT INTO category(category_code, category_name, high_category)
values('b09', '��Ƽ', null);
INSERT INTO category(category_code, category_name, high_category)
values('b10', '��Ȱ ����', null);
INSERT INTO category(category_code, category_name, high_category)
values('b11', '�ڵ��� ����', null);
INSERT INTO category(category_code, category_name, high_category)
values('b12', '���� ��Ÿ', null);

--�м��Ƿ� �ߺз�
INSERT INTO category(category_code, category_name, high_category)
values('m01', '�����Ƿ�', 'b01');
INSERT INTO category(category_code, category_name, high_category)
values('m02', '�����Ƿ�', 'b01');
INSERT INTO category(category_code, category_name, high_category)
values('m03', '�������', 'b01');

--��Ƽ ��ȭ �ߺз�
INSERT INTO category(category_code, category_name, high_category)
values('m04', '�Ź�', 'b02');
INSERT INTO category(category_code, category_name, high_category)
values('m05', '����/�м���ȭ', 'b02');
INSERT INTO category(category_code, category_name, high_category)
values('m06', '���/�ð�/���۶�', 'b02');
INSERT INTO category(category_code, category_name, high_category)
values('m07', '���Ը�ǰ', 'b02');

--���ƿ�ǰ �ߺз�
INSERT INTO category(category_code, category_name, high_category)
values('m08', '������/����/���ƽ�', 'b03');
INSERT INTO category(category_code, category_name, high_category)
values('m09', '���/���ƿ�ǰ/�Ӻκ�', 'b03');
INSERT INTO category(category_code, category_name, high_category)
values('m10', '�峭��/�����ϱ�/����', 'b03');
INSERT INTO category(category_code, category_name, high_category)
values('m11', '���Ƶ��Ƿ�', 'b03');

--������Ȱ �ߺз�
INSERT INTO category(category_code, category_name, high_category)
values('m12', '����/DIY', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m13', '����/���׸���', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m14', 'ħ��/Ŀư', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m15', '��Ȱ/���/������ǰ', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m16', '�ֹ��ǰ', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m17', '��/����/�����깰', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m18', '�ǰ���ǰ/���̾�Ʈ', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m19', 'Ŀ��/����', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m20', '�Ｎ/����/������ǰ', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m21', 'ȭ����/��Ƽ��/������', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m22', '����/����', 'b04');

--��� �÷��� �ߺз�
INSERT INTO category(category_code, category_name, high_category)
values('m23', '�ǰ�/�Ƿ��ǰ', 'b05');
INSERT INTO category(category_code, category_name, high_category)
values('m24', '�ݷ�������ǰ', 'b05');
INSERT INTO category(category_code, category_name, high_category)
values('m25', '�Ǳ�/���/Ű��Ʈ', 'b05');
INSERT INTO category(category_code, category_name, high_category)
values('m26', '������/����/�繫��ǰ', 'b05');
INSERT INTO category(category_code, category_name, high_category)
values('m27', '��/�̺�Ʈ��ǰ', 'b05');

--������ �ߺз�
INSERT INTO category(category_code, category_name, high_category)
values('m28', 'ī�޶�', 'b06');
INSERT INTO category(category_code, category_name, high_category)
values('m29', '������', 'b06');
INSERT INTO category(category_code, category_name, high_category)
values('m30', '����', 'b06');
INSERT INTO category(category_code, category_name, high_category)
values('m31', '�����/�º�', 'b06');

--��ǻ�� �ߺз�
INSERT INTO category(category_code, category_name, high_category)
values('m32', '��Ʈ��/PC', 'b07');
INSERT INTO category(category_code, category_name, high_category)
values('m33', '�����/������', 'b07');
INSERT INTO category(category_code, category_name, high_category)
values('m34', 'PC�ֺ����', 'b07');
INSERT INTO category(category_code, category_name, high_category)
values('m35', '������ġ', 'b07');

--������ ���� �ߺз�
INSERT INTO category(category_code, category_name, high_category)
values('m36', '��Ʈ�Ͻ�/����', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m37', '�������Ƿ�/�ȭ', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m38', '����Ŭ��/�Ƿ�/��ǰ', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m39', '���/�ƿ�����', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m40', 'ķ��/����', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m41', '����/����', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m42', '������/����', 'b08');

--��Ƽ �ߺз�(b09)
INSERT INTO category(category_code, category_name, high_category)
values('m43', 'ȭ��ǰ/���', 'b09');
INSERT INTO category(category_code, category_name, high_category)
values('m44', '�ٵ�/���', 'b09');

--��Ȱ���� �ߺз�(b10)
INSERT INTO category(category_code, category_name, high_category)
values('m45', '������', 'b10');
INSERT INTO category(category_code, category_name, high_category)
values('m46', '��������', 'b10');
INSERT INTO category(category_code, category_name, high_category)
values('m47', '�ֹ氡��', 'b10');
INSERT INTO category(category_code, category_name, high_category)
values('m48', '��Ȱ/�̿밡��', 'b10');

--�ڵ��� ���� �ߺз�(b11)
INSERT INTO category(category_code, category_name, high_category)
values('m49', '�ڵ�����ǰ/���ڽ�', 'b11');
INSERT INTO category(category_code, category_name, high_category)
values('m50', 'Ÿ�̾�/����/��ǰ', 'b11');
INSERT INTO category(category_code, category_name, high_category)
values('m51', '����/����/�����ǰ', 'b11');

--������Ÿ �ߺз�(b12)
INSERT INTO category(category_code, category_name, high_category)
values('m52', '����/����/����', 'b12');
INSERT INTO category(category_code, category_name, high_category)
values('m53', '��ȭ��/��ȭ��ǰ��', 'b12');
INSERT INTO category(category_code, category_name, high_category)
values('m54', '����/�װ���', 'b12');
INSERT INTO category(category_code, category_name, high_category)
values('m55', 'e����/����ϻ�ǰ��', 'b12');

select category_name, high_category
from category;