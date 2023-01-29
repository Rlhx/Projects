use BM303_2223G_VT02;

go
/*Table for personel, id, dept_id, nam, surname, date, salary, id is a primary key*/
CREATE TABLE personel(
id int,
departman_id int,
ad NVARCHAR(32),
soyad NVARCHAR(32),
email NVARCHAR(32),
dogum date,
maas int,
PRIMARY KEY (id));

go
/*Table for a product, id, name, visual, id is a primary key*/
CREATE TABLE urun
(id int,
ad NVARCHAR(32),
gorsel NVARCHAR(32),
PRIMARY KEY (id)
);

go
/*Table for dept, name, numberofroom, id is a primary key*/
CREATE TABLE departman
(id int,
ad NVARCHAR(32),
odano int,
PRIMARY KEY (id));

go
/*Table for customer, id, country, name, surname, email, date, username, password, id is a primary key*/
CREATE TABLE musteri
(id int,
ulke_id NVARCHAR(32),
ad NVARCHAR(32),
soyad NVARCHAR(32),
email NVARCHAR(32),
dogum date,
kullaniciadi NVARCHAR(32),
sifre NVARCHAR(32),
PRIMARY KEY (id));

go
/*Table for country, id, name, orijinalad, id is a primary key*/
CREATE TABLE ulke
(id NVARCHAR(32),
ad NVARCHAR(32),
orjinalad NVARCHAR(32),
PRIMARY KEY (id));

go
/*Table for entreprise, id, name, id is a primary key*/
CREATE TABLE firma
(id int,
ad NVARCHAR(32),
PRIMARY KEY (id));

go
/*Table for adress of entreprise, id, firma name, debut, end, adress, telephon, fax, id is a primary key*/
CREATE TABLE firma_adres
(id int,
firma_id int,
baslangic date,
bitis date,
adres NVARCHAR(32),
telefon NVARCHAR(32),
faks NVARCHAR(32),
PRIMARY KEY (id));

go
/*Table for price of product, id, debut, end, product id, price, id is a primary key*/
CREATE TABLE urun_fiyat
(id int,
baslangic date,
bitis date,
urun_id int,
fiyat int,
PRIMARY KEY (id));

go
/*Table for product group, id, product id, name, id is a primary key*/
CREATE TABLE urun_grup
(id int,
urun_id int,
ad NVARCHAR(32),
PRIMARY KEY (id));

go
/*Table for order debut, id, date, customer id, id is a primary key*/
CREATE TABLE siparis_baslik
(id int,
tarih date,
musteri_id int,
PRIMARY KEY (id));

go
/*Table for order style, id, order id, product id, number, id is a primary key*/
CREATE TABLE siparis_kalem
(id int,
siparis_id int,
urun_id int,
adet int,
PRIMARY KEY (id));

go
/*Table for delivery style, id, delivery id, order style id, id is a primary key*/
CREATE TABLE teslimat_kalem
(id int,
teslimat_id int,
siparis_kalem_id int,
PRIMARY KEY (id));

go
/*Table for delivery, id, customer id, date, id is a primary key*/
CREATE TABLE teslimat_baslik
(id int,
musteri_id int,
tarih date,
notlar NVARCHAR(32),
PRIMARY KEY (id));



