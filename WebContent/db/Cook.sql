drop table cook;  

CREATE TABLE cook(
  cookid VARCHAR2(10), -- ���� ID
  cookname varchar2(50), -- ���� �̸�
  egg varchar2(1), -- �ް�
  carrot varchar2(1), -- ���
  onion varchar2(1), -- ����
  potato varchar2(1), -- ����
  garlic varchar2(1), -- ����
  mushroom varchar2(1), -- ����
  pepper varchar2(1), -- ����
  daikon varchar2(1), -- ��
  lettuce varchar2(1), --�����
  pumpkin varchar2(1), -- ��ȣ��
  pork varchar2(1), -- �������
  beef varchar2(1), -- �Ұ��
  chicken varchar2(1), -- �߰��
  sausage varchar2(1), -- �Ҽ���
  bacon varchar2(1), -- ������
  mackerel varchar2(1), -- ����
  squid varchar2(1), -- ��¡��
  saury varchar2(1), -- ��ġ
  mussel varchar2(1), -- ȫ��
  cheese varchar2(1), -- ġ��
  url varchar2 (200), -- �丮 ������ ��� ��ũ
  src varchar2 (200) -- �丮 �̹��� ���
) SEGMENT creation IMMEDIATE ;  

insert into cook(cookname,onion,garlic,mushroom,pumpkin,squid,url) values('����ä���ػ깰������','1','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=119708');
insert into cook(cookname,garlic,squid,url) values('��¡��̿���ä','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=119712');
insert into cook(cookname,pepper,lettuce,squid,url) values('����ұ���','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=119858');
insert into cook(cookname,egg,potato,bacon,url) values('�������������','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=118441');
insert into cook(cookname,mushroom,cheese,url) values('����ī����','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=118433');
insert into cook(cookname,pumpkin,url) values('��ȣ�ڹ�ħ','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=116228');
insert into cook(cookname,onion,lettuce,chicken,bacon,url) values('��ġŲ������ġ','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=114305');
insert into cook(cookname,onion,garlic,pumpkin,sausage,url) values('������̵���','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=114278');
insert into cook(cookname,onion,lettuce,beef,url) values('�Ұ�������ġ','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=113095');
insert into cook(cookname,onion,garlic,pork,url) values('���������ָԹ�','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=109826');
insert into cook(cookname,egg,carrot,pepper,cheese,url) values('ġ��մް�����','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=109815');
insert into cook(cookname,potato,bacon,url) values('�˰����������κκ���������','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=109811');
insert into cook(cookname,carrot,onion,lettuce,chicken,url) values('�߽�ĭ������','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=109771');
insert into cook(cookname,egg,onion,garlic,mushroom,bacon,cheese,url) values('Ǫ�Ǹ��ް��׶���','1','1','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=100534');
insert into cook(cookname,onion,daikon,saury,url) values('��ġ��ġ�','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=100291');
insert into cook(cookname,onion,garlic,pepper,pumpkin,squid,mussel,url) values('��ȣ���ع���','1','1','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=100295');
insert into cook(cookname,onion,garlic,daikon,chicken,url) values('�ߺҰ��','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=98521');
insert into cook(cookname,onion,garlic,pork,url) values('������������Ұ��','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=95516');
insert into cook(cookname,garlic,pepper,daikon,mackerel,url) values('��������','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=79993');
insert into cook(cookname,beef,url) values('���ⲿġ����','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=37103');
insert into cook(cookname,onion,garlic,mushroom,beef,url) values('�縮���Ұ��','1','1','1','1','http://navercast.naver.com/magazine_contents.nhn?contents_id=41193');

select cookname from cook;