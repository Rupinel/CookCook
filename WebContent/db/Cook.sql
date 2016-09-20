drop table cook;  

CREATE TABLE cook(
  cookid VARCHAR2(10), -- 음식 ID
  cookname varchar2(50), -- 음식 이름
  egg varchar2(1), -- 달걀
  carrot varchar2(1), -- 당근
  onion varchar2(1), -- 양파
  potato varchar2(1), -- 감자
  garlic varchar2(1), -- 마늘
  mushroom varchar2(1), -- 버섯
  pepper varchar2(1), -- 고추
  daikon varchar2(1), -- 무
  lettuce varchar2(1), --양상추
  pumpkin varchar2(1), -- 애호박
  pork varchar2(1), -- 돼지고기
  beef varchar2(1), -- 소고기
  chicken varchar2(1), -- 닭고기
  sausage varchar2(1), -- 소세지
  bacon varchar2(1), -- 베이컨
  mackerel varchar2(1), -- 고등어
  squid varchar2(1), -- 오징어
  saury varchar2(1), -- 꽁치
  mussel varchar2(1), -- 홍합
  cheese varchar2(1), -- 치즈
  url varchar2 (200), -- 요리 정보가 담긴 링크
  src varchar2 (200) -- 요리 이미지 경로
) SEGMENT creation IMMEDIATE ;  

insert into cook(cookname,onion,garlic,mushroom,pumpkin,squid,url) values('구운채소해산물샐러드','1','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=119708');
insert into cook(cookname,garlic,squid,url) values('오징어미역냉채','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=119712');
insert into cook(cookname,pepper,lettuce,squid,url) values('비빔쌀국수','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=119858');
insert into cook(cookname,egg,potato,bacon,url) values('스노우포테이토','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=118441');
insert into cook(cookname,mushroom,cheese,url) values('버섯카나페','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=118433');
insert into cook(cookname,pumpkin,url) values('애호박무침','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=116228');
insert into cook(cookname,onion,lettuce,chicken,bacon,url) values('핫치킨샌드위치','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=114305');
insert into cook(cookname,onion,garlic,pumpkin,sausage,url) values('라따뚜이덮밥','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=114278');
insert into cook(cookname,onion,lettuce,beef,url) values('불고기샌드위치','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=113095');
insert into cook(cookname,onion,garlic,pork,url) values('오도독뼈주먹밥','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=109826');
insert into cook(cookname,egg,carrot,pepper,cheese,url) values('치즈왕달걀말이','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=109815');
insert into cook(cookname,potato,bacon,url) values('알감자조림과두부베이컨말이','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=109811');
insert into cook(cookname,carrot,onion,lettuce,chicken,url) values('멕시칸샐러드','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=109771');
insert into cook(cookname,egg,onion,garlic,mushroom,bacon,cheese,url) values('푸실리달걀그라탱','1','1','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=100534');
insert into cook(cookname,onion,daikon,saury,url) values('꽁치김치찌개','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=100291');
insert into cook(cookname,onion,garlic,pepper,pumpkin,squid,mussel,url) values('단호박해물찜','1','1','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=100295');
insert into cook(cookname,onion,garlic,daikon,chicken,url) values('닭불고기','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=98521');
insert into cook(cookname,onion,garlic,pork,url) values('돼지고기고추장불고기','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=95516');
insert into cook(cookname,garlic,pepper,daikon,mackerel,url) values('고등어조림','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=79993');
insert into cook(cookname,beef,url) values('쇠고기꼬치구이','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=37103');
insert into cook(cookname,onion,garlic,mushroom,beef,url) values('사리원불고기','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=41193');

select cookname from cook;