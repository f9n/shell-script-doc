#!/usr/bin/env bash
                    # 'integer' ve 'string' degisken isimlerimizdir.
                    # Bash'te degiskene deger verirlirken '=' arasinda bosluk olmamali.
integer=10
string="Naber, Nasilsin?"

echo $integer       # "integer" degiskenimizin icindeki degeri ekrana basar.
echo $string        # "string" degiskenimizin icindeki degeri ekrana basar.
echo ${string}      #1/ Bir usteki satirla ayni isi yapar.
                    #2/ '{}' kullanmamizin sebebi degisken isimlerin birbirine girmesi onlemek
                    #3/ ve okunabilir olmasini saglamak. 2 alt satir bu duruma ornektir

echo ${string}abc
echo $stringdoc     # Burda bos satir yazdiracaktir, cunku 'stringdoc' diye bir degisken yok.
echo ${string}${integer}
echo ${#string}     #1/ "string" degiskenimizin icindeki degerin uzunlugunu ekrana basar.
                    #2/ Klasik len() fonksiyonu gibi
                    
                    # ${degisken:indis:uzunluk}
                    # Bash'te karakter dizilerin indisleri 0 dan baslar.
echo ${string:7}    # "string" degiskenimizin 7.ci indisinden baslayarak yazdirir.
echo ${string:1:4}  # "string" degiskenimizin 1.ci indisinden baslayarak, 4 birim uzunlugunda karakter dizisi yazdirir.

                        # ${degisken/pattern/yeni_kelime_yada_harf}     # Ilk uyusan ifade
                        # ${degisken//pattern/yeni_kelime_yada_harf}    # genel
                        # ${degisken/#pattern/yeni_kelime_yada_harf}    # soldan uyusan. yani degiskenin ilk harfinden baslayarak uyusmali.
                        # ${degiskne/%pattern/yeni_kelime_yada_harf}    # sagdan uyusan. yani degiskenin son harfinden baslayarak uyusmali.
echo ${string/e/E}      # Ilk uyusan 'e' ifadesini 'E' yapicak.
echo ${string//i/Im}    # Butun 'i' leri 'Im' e cevirecek.
echo ${string/#N/HAN}   # Soldan basliyacak 'N' ifadesini 'HAN' yapacak.
echo ${string/%?/.txt}  # Sagdan baslayarak '?' ifadesini '.txt' yapacak.
                        #1/ Bu kisima en iyi ornek sanirim, global degisken olan "PATH" in parcalanmasidir.
echo $PATH              #2/ "PATH" degiskeni sen ne zaman konsola komut yazdiginda sirali sekilde
                        #3/ hangi dizinleri arayacagini tutar. Bu dizinlerde calistirilabilir dosyalar var.
echo -e "${PATH//:/\\n}"  #1/ Burda "PATH" icindeki tum ":" ifadeleri "\n" olarak ceviriyoruz.
                          #2/ "echo" komutunu "-e" parametresiyle kullanmamizin sebebi "\n" ifadelerine izin vermek.
# Filename: < "2.0_variables.sh" >