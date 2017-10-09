#!/usr/bin/env bash
 #!/usr/bin/env bash
                    # 'integer' ve 'string' degisken isimlerimizdir.
                    # Bash'te degiskene deger verirlirken '=' arasinda bosluk olmamali.
integer=10
string="Naber, Nasilsin?"

echo $integer       # "integer" degiskenimizin icindeki degeri ekrana basar.
echo $string        # "string" degiskenimizin icindeki degeri ekrana basar.
echo ${string}      # Bir usteki satirla ayni isi yapar.
                      # '{}' kullanmamizin sebebi degisken isimlerin birbirine girmesi onlemek
                      # ve okunabilir olmasini saglamak. 2 alt satir bu duruma ornektir
echo ${string}abc
echo $stringdoc     # Burda bos satir yazdiracaktir, cunku 'stringdoc' diye bir degisken yok.
echo ${string}${integer}
echo ${#string}     # "string" degiskenimizin icindeki degerin uzunlugunu ekrana basar.
                        # Klasik len() fonksiyonu gibi
                    # ${degisken:indis:uzunluk}
                    # Bash'te karakter dizilerin indisleri 0 dan baslar.
echo ${string:7}    # "string" degiskenimizin 7.ci indisinden baslayarak yazdirir.
echo ${string:1:4}  # "string" degiskenimizin 1.ci indisinden baslayarak, 4 birim uzunlugunda karakter dizisi yazdirir.
