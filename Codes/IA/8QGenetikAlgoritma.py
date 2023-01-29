#Implementation of N-Queen Problem 


import time,random, numpy as np, math, copy
from collections import namedtuple

def GenetikAlgoritma(ilklendirmeFonk,objektifFonk,seleksiyonFonk,caprazlamaFonk, mutasyonFonk):
    print("lutfen bekleyin...biraz zaman alacak...")
    model=modelYarat()              #model algoritma parametrelerini kapsıyor
    Pop = ilklendirmeFonk(model)    #başlangıç populasyon random olarak oluşturuluyor
    #popülasyon her guncellendinde, objektif degerleri hesap et ve mevcut iyiyi (eliti) bul
    Degerler = objektifHesapla(Pop) #tüm bireylerin objektif değerleri hesaplanıyor
    elitID = Degerler.argmin()      #elit = mevcut popülasyonun en iyisi bulunuyor
    best = Pop[elitID]              #best = global en iyi = başlangıçta elit
    bestDeger = Degerler[elitID] 
    for iter in range(model.maxIter):
                sonrakiPop=[]
                #elit bireyi yeni populasyona ekle
                sonrakiPop.append(Pop[elitID])
                #cocuklari uret, mutasyona uğrat ve yeni populasyona ekle
                for i in range(1, model.popSize):
                        parent1ID = seleksiyonFonk(Degerler, model)
                        parent2ID = seleksiyonFonk(Degerler, model)
                        child = caprazlamaFonk(Pop[parent1ID], Pop[parent2ID], model)
                        child = mutasyonFonk(child,model)
                        sonrakiPop.append(child)
                Pop = sonrakiPop
                #popülasyon güncellendi. hemen objektif değerleri ve eliti bul
                Degerler = objektifHesapla(Pop)
                elitID=Degerler.argmin()
                elitDeger = Degerler[elitID]
                #en iyiyi (best) takip et 
                if elitDeger<bestDeger:
                      bestDeger = elitDeger
                      best =Pop[elitID]
                print("%d.iterasyonda en iyi objektif deger: "%iter,bestDeger)
                if bestDeger==0:
                    break
            
    print("En iyi cozum: ",np.array(best), " ve objektif degeri: ", bestDeger)
    return best

def objektifHesapla(Pop):
    PopSize=len(Pop)
    degerler=np.zeros(PopSize)
    for i in range(PopSize):
        degerler[i]=objektifFonk(Pop[i])
    return degerler

def mutasyonFonk(birey, model):
    if random.random() < model.mutasyonOrani:
        index1=random.randrange(model.nVar)
        birey[index1]=random.randrange(model.nVar)
    return birey

def seleksiyonFonk(Degerler, model): #Turnuva: turnuvaSize kadar Pop dan ID seç-->sample() ile basit
    adaylarID=random.sample(range(model.popSize),model.turnuvaSize) 
    degerler=Degerler[adaylarID]     #vektörel işlem..degerler bir dizi = adayların objektif degerleri
    kazananID=degerler.argmin()
    return adaylarID[kazananID]                  #turnuvadaki en iyi ID
	       
	    	
def caprazlamaFonk(parent1,parent2, model): #tek noktalı (single point) çaprazlama
    child=parent1.copy();
    if random.random() < model.caprazlamaOrani:
        n = len(parent1)
        point = random.randint(0, n - 1)
        child[point:n]= parent2[point:n]
    return child  


def modelYarat():
    model=namedtuple('model', 'popSize,nVar,nElits,mutasyonOrani, turnuvaSize, maxIter');
    model.maxIter=100;
    model.popSize=1000      #kromozom sayısı = cozum sayisi	
    model.nVar=8            #gen sayisi = bir cozumun boyutu = vezir sayisi
    model.mutasyonOrani=0.05
    model.caprazlamaOrani=0.90
    model.turnuvaSize=10    #turnuva tabanlı seleksiyonda, turnuvaya katılacakların sayisi
    return model

def objektifFonk(cozum):
    '''number of queens that attack each other'''
    y=0
    nVar=len(cozum)		#nVar = cozum boyutu = vezir sayisi
    tahta = np.zeros((nVar,nVar));
    for i in range(nVar):      	  #tahtayı sıfır matriksi olarak üret sadece vezir pozisyonları 1 olsun 
       tahta[cozum[i],i] = 1

    for i in range(nVar):      #aynı satirdaki vezirleri say
        say = np.sum(tahta[i])
        if say>=2:
            y = y + say

    for k in range(2):  #aynı sol ve sağ çaprazdaki vezirleri say
        for i in range(-nVar+1,nVar): 
            say = np.sum(np.diagonal(tahta,i))
            if say>=2:
                y = y + say
        tahta=tahta[::-1]  #diagonal fonksiyonu sadece sol çapraz için çalışıyor. sağ çapraz için tahtayı tersleyip aynı işlemi uygula  

    return y   
	
def ilklendirmeFonk(model):
    pop=[]  
    for i in range(model.popSize):
        birey=[]    
        for i in range(model.nVar):
                birey.append(random.randint(0,model.nVar-1))
        pop.append(birey)
    return pop

def main():
	start = time.time()
	GenetikAlgoritma(ilklendirmeFonk,objektifFonk,seleksiyonFonk,caprazlamaFonk, mutasyonFonk)
	end = time.time()
	print("time elapsed(sec)=",end - start)

main()	
