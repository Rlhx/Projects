use BM303_2223G_VT02;
go
/*select * from personel order by ad; --from smallest

--delete from personel where id= 2;

update personel set email='herol@mersin.edu.tr' where ad='Asude';--change the value for all records whith asude as name

select * from personel where ad='Azade' and soyad='Çerkezoglu';--show all records with these specifications

select ad, soyad, maas from personel;

select * from personel where maas>1000 order by maas desc;

select * from personel where ad like 'C%' order by ad; --records starting by C

select * from personel where ad like '%a%' order by ad; --records which contain a

select * from personel where dogum>='1975-01-01' and dogum<='1980-12-31'
order by dogum;--records from people birth btw these dates
 
select id, ad,soyad, maas from personel where maas>=1000 and maas<=2000
order by maas;*/

--CALCULATIONS WITH SQL
/*select count (*) as kayitsayisi from personel;--number of persons in table personel

select departman_id, COUNT(*) as toplam from personel group by departman_id;--number of persons per dept_id

select departman_id, count(*) as personelsayisi from personel
group by departman_id;
select count (distinct departman_id) as ToplamDepSayisi, count(*) as ToplamPerSayisi from personel;--calculer le total de dept auquel on a associé le total de personel

select departman_id, sum(maas) as departmantoplam from personel group by departman_id; --sum of salaries per dept

select departman_id, sum(maas) as toplam from personel where ad like 'A%'group by departman_id;
select sum(maas) as toplam from personel where soyad='Çerkezoğlu';
select * from personel where soyad='Çerkezoğlu';

select departman_id, avg(maas) as departmanortalamasi from personel group by departman_id;

select max(maas) as maksimum from personel;

select min(maas) as minimum from personel;

select * from personel where maas=(select max(maas) from personel);

select ad, soyad, maas, departman_id from personel where maas > (select avg(maas) from personel) and ad like '%a%';*/

select
musteri.ad,musteri.soyad,siparis_baslik.tarih,siparis_kalem.urun_id,siparis_kalem.adet,urun_fiyat.fiyat from musteri
inner join siparis_baslik on musteri.id= siparis_baslik.musteri_id
inner join siparis_kalem on siparis_baslik.id= siparis_kalem.id
inner join urun_fiyat on urun_fiyat.urun_id= siparis_kalem.urun_id;
