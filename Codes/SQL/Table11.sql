use BM303_2223G_VT03;
go
create table kisiler.personel
(id int not null,
ad nvarchar(15) not null,
soyad nvarchar(15) not null,
primary key (id))

go
create table kisiler.musteri
(id int not null,
ürün_id int not null,
ad nvarchar(15) not null,
soyad nvarchar(15) not null,
tarih date not null,
primary key (id))
gocreate table bitki.adlar
(id int not null,
turkce_ad nvarchar(30) not null,
diger_ad nvarchar(30) not null,
sinonim_ad nvarchar(30) not null,
ingilizce_ad nvarchar(30) not null,
primary key (id))
gocreate table bitki.uretim
(id int not null,
uretim_yontem nvarchar(30) not null,
gelisim_hiz nvarchar(20) not null,
primary key (id))
gocreate table bitki.bitki_tanim
(id int not null,
bitki_tip nvarchar(30) not null,
yetistigi_sehir nvarchar(30) not null,
anavatan nvarchar(30) not null,
primary key(id))
gocreate table bitki.ekoloji
(id int not null,
iklim nvarchar(30) not null,
sicaklik nvarchar(30) not null,
isik nvarchar(30) not null,
toprak nvarchar(30) not null,
nem_istegi nvarchar(30),
primary key (id))
gocreate table bitki.morfoloji
(id int not null,
boy int not null,
orta_boy int not null,
yaprak nvarchar(30) not null,
yaprak_tipi nvarchar(30) not null,
cicek nvarchar(30),
cicek_rengi nvarchar(30) not null,
kokusu nvarchar(30) not null,
kök nvarchar(30) not null,
primary key (id))
