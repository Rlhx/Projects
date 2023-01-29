use BM303_2223G_VT03;
Update bitki.bitki_tanım set anavatan='Japonya ' where id=3;
go
delete from kisiler.musteri where id=10;
go
select * from bitki.morfoloji where boy>15 order by boy;
go
select
kisiler.musteri.ad as ad,
kisiler.musteri.soyad as soyad
from kisiler.musteri
inner join kisiler.personel on personel.id=musteri.id;
go
select
bitki.adlar.turkce_ad as bitki_tip,
bitki.adlar.ingilizce_ad as anavatan,
bitki.adlar.diger_ad as uretim_yontem
from bitki.adlar
inner join bitki.bitki_tanim on bitki.bitki_tanim.id=bitki.adlar.id
inner join bitki.uretim on bitki.uretim.id=bitki.adlar.id;

go
select
bitki.adlar.turkce_ad as bitki_tip,
bitki.adlar.ingilizce_ad as anavatan,
bitki.adlar.diger_ad as uretim_yontem,
bitki.adlar.sinonim_ad as ad
from bitki.adlar
inner join bitki.bitki_tanim on bitki.bitki_tanim.id=bitki.adlar.id
inner join bitki.uretim on bitki.uretim.id=bitki.adlar.id
inner join kisiler.musteri on kisiler.musteri.id=bitki.adlar.id;

go
select
bitki.morfoloji.boy as ürün_id,
bitki.morfoloji.yaprak as anavatan,
bitki.morfoloji.cicek as ad,
bitki.morfoloji.kokusu as uretim_yontem,
bitki.morfoloji.kok as gelisim_hiz
from bitki.morfoloji
inner join kisiler.musteri on kisiler.musteri.id=bitki.morfoloji.id
inner join bitki.bitki_tanim on
bitki.bitki_tanim.id=bitki.morfoloji.id
inner join kisiler.personel on
kisiler.personel.id=bitki.morfoloji.id
inner join bitki.uretim on bitki.uretim.id=bitki.morfoloji.id;

go
drop table bitki.ekoloji;