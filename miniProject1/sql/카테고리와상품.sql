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


--대분류
INSERT INTO category(category_code, category_name, high_category)
values('b01', '패션의류', null);
INSERT INTO category(category_code, category_name, high_category)
values('b02', '뷰티 잡화', null);
INSERT INTO category(category_code, category_name, high_category)
values('b03', '유아 용품', null);
INSERT INTO category(category_code, category_name, high_category)
values('b04', '가구 생활', null);
INSERT INTO category(category_code, category_name, high_category)
values('b05', '취미 컬렉션', null);
INSERT INTO category(category_code, category_name, high_category)
values('b06', '디지털', null);
INSERT INTO category(category_code, category_name, high_category)
values('b07', '컴퓨터', null);
INSERT INTO category(category_code, category_name, high_category)
values('b08', '스포츠 레저', null);
INSERT INTO category(category_code, category_name, high_category)
values('b09', '뷰티', null);
INSERT INTO category(category_code, category_name, high_category)
values('b10', '생활 가전', null);
INSERT INTO category(category_code, category_name, high_category)
values('b11', '자동차 공구', null);
INSERT INTO category(category_code, category_name, high_category)
values('b12', '도서 기타', null);

--패션의류 중분류
INSERT INTO category(category_code, category_name, high_category)
values('m01', '여성의류', 'b01');
INSERT INTO category(category_code, category_name, high_category)
values('m02', '남성의류', 'b01');
INSERT INTO category(category_code, category_name, high_category)
values('m03', '언더웨어', 'b01');

--뷰티 잡화 중분류
INSERT INTO category(category_code, category_name, high_category)
values('m04', '신발', 'b02');
INSERT INTO category(category_code, category_name, high_category)
values('m05', '가방/패션잡화', 'b02');
INSERT INTO category(category_code, category_name, high_category)
values('m06', '쥬얼리/시계/선글라스', 'b02');
INSERT INTO category(category_code, category_name, high_category)
values('m07', '수입명품', 'b02');

--유아용품 중분류
INSERT INTO category(category_code, category_name, high_category)
values('m08', '기저귀/분유/유아식', 'b03');
INSERT INTO category(category_code, category_name, high_category)
values('m09', '출산/유아용품/임부복', 'b03');
INSERT INTO category(category_code, category_name, high_category)
values('m10', '장난감/교육완구/인형', 'b03');
INSERT INTO category(category_code, category_name, high_category)
values('m11', '유아동의류', 'b03');

--가구생활 중분류
INSERT INTO category(category_code, category_name, high_category)
values('m12', '가구/DIY', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m13', '조명/인테리어', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m14', '침구/커튼', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m15', '생활/욕실/수납용품', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m16', '주방용품', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m17', '쌀/과일/농수축산물', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m18', '건강식품/다이어트', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m19', '커피/음료', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m20', '즉석/간식/가공식품', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m21', '화장지/물티슈/생리대', 'b04');
INSERT INTO category(category_code, category_name, high_category)
values('m22', '세제/구강', 'b04');

--취미 컬렉션 중분류
INSERT INTO category(category_code, category_name, high_category)
values('m23', '건강/의료용품', 'b05');
INSERT INTO category(category_code, category_name, high_category)
values('m24', '반려동물용품', 'b05');
INSERT INTO category(category_code, category_name, high_category)
values('m25', '악기/취미/키덜트', 'b05');
INSERT INTO category(category_code, category_name, high_category)
values('m26', '디자인/문구/사무용품', 'b05');
INSERT INTO category(category_code, category_name, high_category)
values('m27', '꽃/이벤트용품', 'b05');

--디지털 중분류
INSERT INTO category(category_code, category_name, high_category)
values('m28', '카메라', 'b06');
INSERT INTO category(category_code, category_name, high_category)
values('m29', '음향기기', 'b06');
INSERT INTO category(category_code, category_name, high_category)
values('m30', '게임', 'b06');
INSERT INTO category(category_code, category_name, high_category)
values('m31', '모바일/태블릿', 'b06');

--컴퓨터 중분류
INSERT INTO category(category_code, category_name, high_category)
values('m32', '노트북/PC', 'b07');
INSERT INTO category(category_code, category_name, high_category)
values('m33', '모니터/프린터', 'b07');
INSERT INTO category(category_code, category_name, high_category)
values('m34', 'PC주변기기', 'b07');
INSERT INTO category(category_code, category_name, high_category)
values('m35', '저장장치', 'b07');

--스포츠 레저 중분류
INSERT INTO category(category_code, category_name, high_category)
values('m36', '휘트니스/수영', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m37', '스포츠의류/운동화', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m38', '골프클럽/의류/용품', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m39', '등산/아웃도어', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m40', '캠핑/낚시', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m41', '구기/라켓', 'b08');
INSERT INTO category(category_code, category_name, high_category)
values('m42', '자전거/보드', 'b08');

--뷰티 중분류(b09)
INSERT INTO category(category_code, category_name, high_category)
values('m43', '화장품/향수', 'b09');
INSERT INTO category(category_code, category_name, high_category)
values('m44', '바디/헤어', 'b09');

--생활가전 중분류(b10)
INSERT INTO category(category_code, category_name, high_category)
values('m45', '영상가전', 'b10');
INSERT INTO category(category_code, category_name, high_category)
values('m46', '계절가전', 'b10');
INSERT INTO category(category_code, category_name, high_category)
values('m47', '주방가전', 'b10');
INSERT INTO category(category_code, category_name, high_category)
values('m48', '생활/미용가전', 'b10');

--자동차 공구 중분류(b11)
INSERT INTO category(category_code, category_name, high_category)
values('m49', '자동차용품/블랙박스', 'b11');
INSERT INTO category(category_code, category_name, high_category)
values('m50', '타이어/오일/부품', 'b11');
INSERT INTO category(category_code, category_name, high_category)
values('m51', '공구/안전/산업용품', 'b11');

--도서기타 중분류(b12)
INSERT INTO category(category_code, category_name, high_category)
values('m52', '도서/교육/음반', 'b12');
INSERT INTO category(category_code, category_name, high_category)
values('m53', '백화점/제화상품권', 'b12');
INSERT INTO category(category_code, category_name, high_category)
values('m54', '여행/항공권', 'b12');
INSERT INTO category(category_code, category_name, high_category)
values('m55', 'e쿠폰/모바일상품권', 'b12');

select category_name, high_category
from category;