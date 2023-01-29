use BM303_2223G_VT002;
go

--Tablo 1 oluşturulması
CREATE TABLE personel
(id int,
 departman_id int, 
 ad NVARCHAR(32),
 soyad NVARCHAR(32),
 email NVARCHAR(32),
 dogum date,
 maas int, 
 PRIMARY KEY (id));
go

--Tablo 2 oluşturulması
CREATE TABLE urun
(id int,
 ad NVARCHAR(32),
 gorsel NVARCHAR(32),
 PRIMARY KEY (id));
go

--Tablo 3 oluşturulması
CREATE TABLE departman
(id int,
 ad NVARCHAR(32),
 odano int,
 PRIMARY KEY (id));
go

--Tablo 4 oluşturulması
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

--Tablo 5 oluşturulması
CREATE TABLE ulke
(id NVARCHAR(32),
 ad NVARCHAR(32),
 orjinalad NVARCHAR(32),
 PRIMARY KEY (id));
go

--Tablo 6 oluşturulması
CREATE TABLE firma
(id int,
 ad NVARCHAR(32),
 PRIMARY KEY (id));
go

--Tablo 7 oluşturulması
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

--Tablo 8 oluşturulması
CREATE TABLE urun_fiyat
(id int,
 baslangic date,
 bitis date,
 urun_id int,
 fiyat int,
 PRIMARY KEY (id));
go

--Tablo 9 oluşturulması
CREATE TABLE urun_grup
(id int,
 urun_id int,
 ad NVARCHAR(32),
 PRIMARY KEY (id));
go

--Tablo 10 oluşturulması
CREATE TABLE siparis_baslik
(id int,
 tarih date,
 musteri_id int,
 PRIMARY KEY (id));
go

--Tablo 11 oluşturulması
CREATE TABLE siparis_kalem
(id int,
 siparis_id int,
 urun_id int,
 adet int,
 PRIMARY KEY (id));
go

--Tablo 12 oluşturulması
CREATE TABLE teslimat_kalem
(id int,
 teslimat_id int,
 siparis_kalem_id int,
 PRIMARY KEY (id));
go

--Tablo 13 oluşturulması
CREATE TABLE teslimat_baslik
(id int,
 musteri_id int,
 tarih date,
 notlar NVARCHAR(32),
 PRIMARY KEY (id));