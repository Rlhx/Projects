use BM303_2223G_VT02;

go
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (8, 8, 'Emre','Büyükkalfa','emrebuyukkalfa@hotmail.com', '1978-07-13', 2000);
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (9, 4, 'Ali','Polat','hasanali@hotmail.com', '1978-09-05',3500);
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (10, 5, 'Özgür','Şengül','ozgursengul@yahoo.com', '1981-11-16',900);
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (11, 5, 'Can','Göksun','cangoksun@gmail.com', '1980-05-19',1200);
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (12, 5, 'Dara','Ganjiavi','daragan@yahoo.com', '1975-02-14',1500);
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (13, 5, 'Elif','Akşar','elifeel@hotmail.com', '1975-12-26',750);
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (14, 3, 'Azade','Çerkezoğlu','info@azade.info.com', '1979-09-05', 2200);
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (15, 3, 'Asude','Çerkezoğlu','asude@gmail.com', '1973-09-05',1100);
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (16, 8, 'Cengiz','Çerkezoğlu','cengiz@gmail.com', '1950-01-01',2600);
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (17, 5, 'Seval','Çerkezoğlu','sevalc@gmail.com', '1962-05-01',1200);
Insert into personel(id, departman_id, ad, soyad, email, dogum, maas)
values (18, 8, 'Aytek','Karadeniz','aytek@ghotmail.com', '1983-10-11',950);

go
Insert into urun(id, ad, gorsel)
values (1,'Boş CD','cd.jpg');
Insert into urun(id, ad, gorsel)
values (2,'A4 Kağıt','kagit.jpg');
Insert into urun(id, ad, gorsel)
values (3,'Boş DVD','cd.jpg');
Insert into urun(id, ad, gorsel)
values (4,'HP Laptop','hp.jpg');
Insert into urun(id, ad, gorsel)
values (5,'Toshiba Laptop','toshiba.jpg');
Insert into urun(id, ad, gorsel)
values (6,'Casper Masaüstü Bilgisayar','casper.jpg');
Insert into urun(id, ad, gorsel)
values (7,'Programcılık Mantığı','program.jpg');
Insert into urun(id, ad, gorsel)
values (8,'Bilgisayar Destekli Müzik','bdm.jpg');
Insert into urun(id, ad, gorsel)
values (9,'Nokia 6260','n6260.jpg');
Insert into urun(id, ad, gorsel)
values (10,'Siemens SX1', 'sx1.jpg');

go
Insert into departman(id, ad, odano)
values (1,'Muhasebe',1312);
Insert into departman(id, ad, odano)
values (2,'İnsan Kaynakları',2435);
Insert into departman(id, ad, odano)
values (3,'Pazarlama',4235);
Insert into departman(id, ad, odano)
values (4,'IT',6235);
Insert into departman(id, ad, odano)
values (5,'Üretim',1324);
Insert into departman(id, ad, odano)
values (6,'Temizlik',4432);
Insert into departman(id, ad, odano)
values (7,'Güvenlik',2665);
Insert into departman(id, ad, odano)
values (8,'Yönetim',8565);
Insert into departman(id, ad, odano)
values (9,'Lojistik',3456);

go
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (1, 'TR', 'Bülent', 'Muska', 'bulentmuska@msn.com', '1980-10-
13', 'bulent', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (2, 'TR', 'Nuri', 'Çolak', 'nuric@hotmail.com', '1976-06-13',
'nuri', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (3, 'TR', 'Mete', 'Çağlayan', 'mete.caglayan@sap.com', '1976-01-
13', 'mete', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (4, 'TR', 'Begüm', 'Güven', 'begum77@yahoo.com', '1977-11-13',
'begum', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (5, 'DE', 'Buket', 'Akçetin', 'buket.akcetin@klueber.de', '1978-
06-13', 'buket', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (6, 'TR', 'Cemal', 'Cinkılıç', 'cemal@doublekey.org', '1978-12-
13', 'cemal', 'muska');
insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)values (7, 'TR', 'Burak', 'Göreli', 'burakgoreli@diss.com', '1972-10-
13', 'burak', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (8, 'TR', 'Okay', 'Alp', 'okay@gmail.com', '1974-07-13', 'okay',
'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (9, 'TR', 'Azra', 'Yalnız', 'azra@gmail.com', '1972-10-13',
'azra', 'muska');
insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (10, 'TR', 'Oya', 'Başar', 'oyabas@hotmail.com', '1973-02-13',
'oya', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (11, 'TR', 'Kayıhan', 'Onuk', 'kayihano@hotmail.com', '1978-03-
13', 'kayihan', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (12, 'TR', 'Tolga', 'Ader', 'tolgader@hotmail.com', '1972-10-
13', 'tolga', 'muska');
insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (13, 'TR', 'Tolga', 'Çavuşoğlu',
'tolga.cavusoglu@eczacibasi.com', '1972-07-13', 'tolga', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (14, 'TR', 'Volkan', 'Özkoçak', 'master@gmail.com', '1970-10-
13', 'volkan', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (15, 'UK', 'Melissa', 'Crawford', 'melcrawmirc.co.uk', '1983-10-
13', 'melissa', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (16, 'TR', 'Barış', 'Çekiç', 'baris.cekic@t-systems.com.tr',
'1970-10-13', 'baris', 'muska');
insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (17, 'DE', 'Horst', 'Müller', 'horst@gmail.com', '1970-07-13',
'horst', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (18, 'DE', 'Kurt', 'Frankfurter', 'kurtfrank@yahoo.com', '1971-
05-13', 'kurt', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)
values (19, 'TR', 'Yavuz', 'Çetin', 'yavuz.cetin@otherside.com', '1970-
05-13', 'yavuz', 'muska');
Insert into musteri(id, ulke_id, ad, soyad, email, dogum, kullaniciadi,
sifre)values (20, 'TR', 'Kerim', 'Çaplı', 'kerim.capli@otherside.com', '1960-
08-13', 'kerim', 'muska');

go
Insert into ulke(id, ad, orjinalad)
values ('DE', 'Almanya', 'Deutschland');
Insert into ulke(id, ad, orjinalad)
values ('TR', 'Türkiye', 'Türkiye');
Insert into ulke(id, ad, orjinalad)
values ('UK', 'İngiltere', 'England');

go
Insert into firma(id, ad)
values (1, 'Çözümevi');
Insert into firma(id, ad)
values (2, 'T-Systems');
Insert into firma(id, ad)
values (3, 'SBS');
Insert into firma(id, ad)values (4, 'Delphi');

go
Insert into firma_adres(id, firma_id, baslangic, bitis, adres, telefon,
faks)
values (1, 1, '2004-01-01', '2004-12-31', 'Erenköy İstanbul', '02164671458', '02164671459');
Insert into firma_adres(id, firma_id, baslangic, bitis, adres, telefon,
faks)
values (2, 2, '2004-01-01', '9999-12-31', 'Mecidiyeköy İstanbul', '02121112233', '02122223344');
Insert into firma_adres(id, firma_id, baslangic, bitis, adres, telefon,
faks)
values (3, 3, '2004-01-01', '2005-05-31', 'Kartal İstanbul', '02163334455', '02167748594');
Insert into firma_adres(id, firma_id, baslangic, bitis, adres, telefon,
faks)
values (4, 4, '2004-01-01', '9999-12-31', 'Dudullu İstanbul', '02164756475', '02169405839');
Insert into firma_adres(id, firma_id, baslangic, bitis, adres, telefon,
faks)
values (5, 1, '2005-01-01', '9999-12-31', 'Kozyatağı İstanbul', '02164671458', '02164671459');
Insert into firma_adres(id, firma_id, baslangic, bitis, adres, telefon,
faks)
values (6, 2, '2005-06-01', '9999-12-31', 'Maslak İstanbul', '02125344332', '02125344335');

go
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (1, '2004-03-01', '2005-02-28', 1, 1);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (2, '2004-03-01', '2005-02-28', 2, 5);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (3, '2004-03-01', '2005-02-28', 3, 10);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (4, '2004-03-01', '2005-02-28', 4, 1200);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (5, '2004-03-01', '2005-02-28', 5, 1499);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (6, '2004-03-01', '2005-02-28', 6, 800);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (7, '2004-03-01', '2005-02-28', 7, 30);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (8, '2004-03-01', '2005-02-28', 8, 15);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (9, '2005-03-01', '2006-02-28', 1, 2);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (10, '2005-03-01', '2006-02-28', 2, 6);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (11, '2005-03-01', '2006-02-28', 3, 12);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (12, '2005-03-01', '2006-02-28', 4, 1100);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (13, '2005-03-01', '2006-02-28', 5, 1200);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (14, '2005-03-01', '2006-02-28', 6, 750);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (15, '2005-03-01', '2006-02-28', 7, 25);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (16, '2005-03-01', '2006-02-28', 8, 12);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (17, '2004-03-01', '2005-02-28', 9, 450);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (18, '2004-03-01', '2005-02-28', 10, 500);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (19, '2005-03-01', '2006-02-28', 9, 400);
Insert into urun_fiyat(id, baslangic, bitis, urun_id, fiyat)
values (20, '2005-03-01', '2006-02-28', 10, 450);

go
Insert into urun_grup(id, urun_id, ad)
values (1, 5, 'Sarf Malzemeleri');
Insert into urun_grup(id, urun_id, ad)
values (2, 4, 'Bilgisayarlar');
Insert into urun_grup(id, urun_id, ad)
values (3, 5, 'Kitaplar');
Insert into urun_grup(id, urun_id, ad)
values (4, 0, 'Elektronik ürünler');
Insert into urun_grup(id, urun_id, ad)
values (5, 0, 'Diğer ürünler');
Insert into urun_grup(id, urun_id, ad)
values (6, 4, 'Cep telefonları');
Insert into urun_grup(id, urun_id, ad)
values (7, 4, 'PDA cihazları');
Insert into urun_grup(id, urun_id, ad)
values (8, 7, 'Windows CE tabanlı');
Insert into urun_grup(id, urun_id, ad)
values (9, 7, 'Palm OS tabanlı');

go
Insert into siparis_baslik(id, tarih, musteri_id)
values (1, '2005-01-01', 18);
Insert into siparis_baslik(id, tarih, musteri_id)
values (2, '2005-01-01', 2);
Insert into siparis_baslik(id, tarih, musteri_id)
values (3, '2005-01-03', 2);
Insert into siparis_baslik(id, tarih, musteri_id)
values (4, '2005-01-04', 7);
Insert into siparis_baslik(id, tarih, musteri_id)
values (5, '2005-01-05', 9);
Insert into siparis_baslik(id, tarih, musteri_id)
values (6, '2005-01-05', 15);
Insert into siparis_baslik(id, tarih, musteri_id)
values (7, '2005-01-12', 20);
Insert into siparis_baslik(id, tarih, musteri_id)
values (8, '2005-04-04', 2);
Insert into siparis_baslik(id, tarih, musteri_id)
values (9, '2005-04-10', 1);

go
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (1,1,1,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (2,1,4,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (3,2,5,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (4,2,3,2);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (5,2,4,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (6,3,2,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (7,3,3,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (8,4,4,2);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (9,4,3,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (10,4,6,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (11,5,2,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (12,5,1,2);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (13,5,4,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (14,5,1,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (15,6,7,1);Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (16,7,3,3);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (17,7,5,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (18,8,8,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (19,8,2,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (20,8,6,2);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (21,9,1,1);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (22,9,7,2);
Insert into siparis_kalem (id, siparis_id, urun_id, adet)
values (23,9,8,3);

go
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (8,1,1);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (9,1,2);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (10,2,3);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (11,2,4);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (12,2,5);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (13,2,6);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (14,2,7);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (15,3,8);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (16,3,9);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (17,3,10);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (18,4,11);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (19,4,12);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (20,4,13);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (21,4,14);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (22,5,15);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)values (23,6,16);
Insert into teslimat_kalem (id, teslimat_id, siparis_kalem_id)
values (24,6,17);

go
Insert into teslimat_baslik (id, musteri_id, tarih, notlar)
values (1, 18, '2005-01-03', 'Hediye paketi');
Insert into teslimat_baslik (id, musteri_id, tarih, notlar)
values (2, 2, '2005-01-05', 'İki sipariş');
Insert into teslimat_baslik (id, musteri_id, tarih, notlar)
values (3, 7, '2005-01-10', 'Tek sipariş');
Insert into teslimat_baslik (id, musteri_id, tarih, notlar)
values (4, 9, '2005-01-08', 'Peşin ödenmişti');
Insert into teslimat_baslik (id, musteri_id, tarih, notlar)
values (5, 15, '2005-01-08', 'Uzak bölge');
Insert into teslimat_baslik (id, musteri_id, tarih, notlar)
values (6, 20, '2005-01-12', 'Hediye paketi');
