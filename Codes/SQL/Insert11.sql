use BM303_2223G_VT03;

go

Insert into kisiler.personel(id, ad, soyad)
values (3, 'Emre','Büyükkalfa');
Insert into kisiler.personel(id, ad, soyad)
values (4,'Ali','Polat');
Insert into kisiler.personel(id, ad, soyad)
values (1, 'Özgür','Şengül');

go
Insert into kisiler.musteri(id, ürün_id, ad, soyad, tarih)
values (1, 2, 'Bülent', 'Muska', '2020-10-13');
Insert into kisiler.musteri(id, ürün_id, ad, soyad, tarih)
values (2, 3, 'Nuri', 'Çolak', '2020-06-13');
Insert into kisiler.musteri(id, ürün_id, ad, soyad, tarih)
values (3, 2, 'Mete', 'Çağlayan', '2020-01-13');
Insert into kisiler.musteri(id, ürün_id, ad, soyad, tarih)
values (4, 10, 'Begüm', 'Güven','2020-11-13');
Insert into kisiler.musteri(id, ürün_id, ad, soyad, tarih)
values (5, 7, 'Buket', 'Akçetin','2020-06-13');
Insert into kisiler.musteri(id, ürün_id, ad, soyad, tarih)
values (6, 8, 'Cemal', 'Cinkılıç', '2020-12-13');
Insert into kisiler.musteri(id, ürün_id, ad, soyad, tarih)
values (7, 10, 'Burak', 'Göreli','2020-10-13');
Insert into kisiler.musteri(id, ürün_id, ad, soyad, tarih)
values (8, 9, 'Okay', 'Alp','2020-07-13');
Insert into kisiler.musteri(id, ürün_id, ad, soyad, tarih)
values (9, 5, 'Azra', 'Yalnız', '2020-10-13');
Insert into kisiler.musteri(id, ürün_id, ad, soyad, tarih)
values (10, 1, 'Oya', 'Başar', '2020-02-13');

go
Insert into bitki.adlar (id, turkce_ad, diger_ad, sinonim_ad,
ingilizce_ad)
values (1, 'Dağ Çamı', 'Mugo Çamı', 'Pinus Mugo', 'Dwarf Mountain
Pine');
Insert into bitki.adlar (id, turkce_ad, diger_ad, sinonim_ad,
ingilizce_ad)
values (2, 'Avrupa Ladini', 'Adi Ladin', 'Picea Excelsa', 'Norway
Spruce');
Insert into bitki.adlar (id, turkce_ad, diger_ad, sinonim_ad,
ingilizce_ad)
values (3, 'Bambu', 'Hint Kumaşı', 'Bambusa Glaucescens', 'Bamboo');
Insert into bitki.adlar (id, turkce_ad, diger_ad, sinonim_ad,
ingilizce_ad)
values (4, 'Beyaz Dut', 'Dut', 'Morus Alba', 'White Mulberry');
Insert into bitki.adlar (id, turkce_ad, diger_ad, sinonim_ad,
ingilizce_ad)
values (5, 'Biberiye', 'Kuşdili', 'Rosmarinus', 'Rosemary');
Insert into bitki.adlar (id, turkce_ad, diger_ad, sinonim_ad,
ingilizce_ad)
values (6, 'Çarkıfelek', 'Saat Çiçeği', 'Passiflora', 'Blue Passion
Flower');
Insert into bitki.adlar (id, turkce_ad, diger_ad, sinonim_ad,
ingilizce_ad)
values (7, 'Mor Salkım', 'Çin Morsalkımı', 'Glycine Sinensis',
'Chinese Wisteria');
Insert into bitki.adlar (id, turkce_ad, diger_ad, sinonim_ad,
ingilizce_ad)
values (8, 'Muşmula', 'Taş Elması', 'Cotoneaster Medik', 'Rocksprey
Cotoneaster');
Insert into bitki.adlar (id, turkce_ad, diger_ad, sinonim_ad,
ingilizce_ad)
values (9, 'Kiraz', 'Karagevrek', 'Cerasus Avium', 'Sweet Cheryy');
Insert into bitki.adlar (id, turkce_ad, diger_ad, sinonim_ad,
ingilizce_ad)
values (10, 'Doğu Çınarı', 'Kavlağan', 'Platonus Orientalis',
'Oriental Planetree');

go
Insert into bitki.bitki_tanim (id, bitki_tip, yetistigi_sehir,
anavatan)
values (1, 'Yayvan', 'Ege,Akdeniz,Marmara', 'Orta Avrupa');
Insert into bitki.bitki_tanim (id, bitki_tip, yetistigi_sehir,
anavatan)
values (2, 'Üçgen', 'Her il', 'Rusya');
Insert into bitki.bitki_tanim (id, bitki_tip, yetistigi_sehir,
anavatan)
values (3, 'Dikey', 'Her il', 'Çin');
Insert into bitki.bitki_tanim (id, bitki_tip, yetistigi_sehir,
anavatan)
values (4, 'Yuvarlak', 'Gazientep,İzmir', 'Doğu Asya');
Insert into bitki.bitki_tanim (id, bitki_tip, yetistigi_sehir,
anavatan)
values (5, 'Dağınık', 'Mersin,Hatay', 'Akdeniz');
Insert into bitki.bitki_tanim (id, bitki_tip, yetistigi_sehir,
anavatan)
values (6, 'Çalı', 'Her il', 'Güney Amerika');
Insert into bitki.bitki_tanim (id, bitki_tip, yetistigi_sehir,
anavatan)
values (7, 'Sarılıcı', 'Doğal yetişmez', 'Çin');
Insert into bitki.bitki_tanim (id, bitki_tip, yetistigi_sehir,
anavatan)
values (8, 'Çalı', 'Ilıman şehirler', 'Çin');
Insert into bitki.bitki_tanim (id, bitki_tip, yetistigi_sehir,
anavatan)
values (9, 'Dağınık', 'Marmara', 'Asya');
Insert into bitki.bitki_tanim (id, bitki_tip, yetistigi_sehir,
anavatan)
values (10, 'Yuvarlak', 'Her il', 'Asya');

go
Insert into bitki.uretim (id, uretim_yontem, gelisim_hiz)
values (1, 'Tohum', 'Yavaş');
Insert into bitki.uretim (id, uretim_yontem, gelisim_hiz)
values (2, 'Tohum', 'Orta');
Insert into bitki.uretim (id, uretim_yontem, gelisim_hiz)
values (3, 'Çelik', 'Orta');
Insert into bitki.uretim (id, uretim_yontem, gelisim_hiz)
values (4, 'Tohum', 'Hızlı');
Insert into bitki.uretim (id, uretim_yontem, gelisim_hiz)
values (5, 'Tohum', 'Hızlı');
Insert into bitki.uretim (id, uretim_yontem, gelisim_hiz)
values (6, 'Aşı', 'Hızlı');
Insert into bitki.uretim (id, uretim_yontem, gelisim_hiz)
values (7, 'Çelik', 'Hızlı');
Insert into bitki.uretim (id, uretim_yontem, gelisim_hiz)
values (8, 'Tohum', 'Yavaş');
Insert into bitki.uretim (id, uretim_yontem, gelisim_hiz)
values (9, 'Çelik', 'Orta');
Insert into bitki.uretim (id, uretim_yontem, gelisim_hiz)
values (10, 'Tohum', 'Hızlı');

go
Insert into bitki.ekoloji (id, iklim, sicaklik,isik, toprak,
nem_istegi)
values (3, 'Ilıman', '-18', 'Yarı güneş','Zengin', 'Orta');

go
Insert into bitki.morfoloji (id, boy, orta_boy, yaprak, yaprak_tipi,
cicek, cicek_rengi, kokusu, kök)
values (1, 5, 2, 'Koyu yesil', ' Igneli', 'Belli belirsiz', 'Koyu',
'Yapraklari kokulu', 'Kazik kok' );
Insert into bitki.morfoloji (id, boy, orta_boy, yaprak, yaprak_tipi,
cicek, cicek_rengi, kokusu, kök)
values (2, 50, 40, 'Sivri uc ', 'Igneli', 'Monoik', 'Kirmizi,sari',
'kokusuz', 'Yayvan');
Insert into bitki.morfoloji (id, boy, orta_boy, yaprak, yaprak_tipi,
cicek, cicek_rengi, kokusu, kök)
values (3, 5, 2, 'Yesil renkli uzun', 'Basit', 'Basak halinde',
'gri', 'Kokusuz','Sıg kok');
Insert into bitki.morfoloji (id, boy, orta_boy, yaprak, yaprak_tipi,
cicek, cicek_rengi, kokusu, kök)
values (4, 22, 18, 'Kalp seklinde', 'Basit', 'Bir evcikli', 'Krem
yesili', 'Kokusuz', 'Sacak');
Insert into bitki.morfoloji (id, boy, orta_boy, yaprak, yaprak_tipi,
cicek, cicek_rengi, kokusu, kök)
values (5, 2, 1, 'Herdem yesil', 'Birlesik', 'Salkım', 'Eflatun',
'Guzel', 'Sıg kok');
Insert into bitki.morfoloji (id, boy, orta_boy, yaprak, yaprak_tipi,
cicek, cicek_rengi, kokusu, kök)
values (6, 10, 6, 'Genelde Yesil', 'Cok loplu', 'Gosterisli',
'Mavi','Nane, Ananas', 'Sıg Kok');
Insert into bitki.morfoloji (id, boy, orta_boy, yaprak, yaprak_tipi,
cicek, cicek_rengi, kokusu, kök)
values (7, 10, 3, 'Elips', 'Bilesik', 'Salkim', 'Mavi-Mor',
'Kokulu', 'Yayılıcı');
Insert into bitki.morfoloji (id, boy, orta_boy, yaprak, yaprak_tipi,
cicek, cicek_rengi, kokusu, kök)
values (8, 1, 1, 'Koyu yesil','Herdem yesil', 'Güzel', 'Beyazpembe', 'kokusuz', 'Yüzeysel kok');
Insert into bitki.morfoloji (id, boy, orta_boy, yaprak, yaprak_tipi,
cicek, cicek_rengi, kokusu, kök)
values (9, 20, 10, '5-10 cm yesil', 'Basit', 'Katmerli', 'Beyaz',
'Kokusuz', 'Kazık');
Insert into bitki.morfoloji (id, boy, orta_boy, yaprak, yaprak_tipi,
cicek, cicek_rengi, kokusu, kök)
values (10, 30, 20, 'Yapraklı', 'Basit', 'Kumeli', 'Kirmizi',
'Kokusuz', 'Guclu');



