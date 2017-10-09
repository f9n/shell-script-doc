#!/usr/bin/env bash

# Metot 1
echo "Bir sayi giriniz: "                        # Burda 'echo' komutu otomatik bir alt satira gecer.
read sayi_degiskeni_1
echo ${sayi_degiskeni_1}

# Metot 2
echo -n "Bir sayi giriniz: "                     # (-n) parametre bir alt satira gecmeyi onler.
read -n 1 sayi_degiskeni_2                       # (-n 1) ile kullanicidan sadece bir karakter alir.
echo -e "\n${sayi_degiskeni_2}"                  # (-e) parametresi ile \n,\t.. gibi ifadelere izin verir.

# Metot 3
read -p "Bir sayi giriniz: " sayi_degiskeni_3    # (-p) ile tek satirda kullanicidan veri alma
echo ${sayi_degiskeni_3}

# Metot 4
read -sp "Parola: " parola                       #1/ (-s) ile kullanicinin girdigi veriyi gizler,
                                                 #2/ misal parola icin kullanilir.
echo ${parola}

# Metot 5
echo -e "\tBir cok veri giriniz, ama araya bosluk koyun:"  
read degisken1 degisken2 degisken3
echo ${degisken1}
echo ${degisken2}
echo ${degisken3}            # 3 ten fazla degisken girdiyseniz, son degiskenlerin hepsi burda toplanir.