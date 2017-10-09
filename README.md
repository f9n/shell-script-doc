# shell-script-doc
Bu reponun ana amaci linux komutlari öğretmek degil. Kodlanmasi eğlencili,hizli,pratik olan Shell Script syntax oğretmek.
Ve insanlarin her gün bilgisayarinda yaptiği sıkıcı işleri otomatikleştiren sistemleri yazmasini sağlayan alt yapi kazandirmak.

# Repoyu okumadan once bilinmesi gerekenler!
<ul>
  <li>Basit Unix Komutlarini bilmen lazim.</li>
  <li>Ve sadece Bash Shell gerekli.Linux ve MacOs da var.Microsoft'ta da artik bash geldi<a href="https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/">(link)</a>.</li>
</ul>

<h6>DipNot: Burda Linux Kullanicisi Microsoft'ta laf sokmamak icin kendini zor tutmustur.</h6>

# Repoda anlamadigim kisimlar var?
 Eger anlamadiginiz kisim varsa, issue olarak belirtin. Daha aciklayici yazmaya calisalim.
 Ve anlasilmayan kismi guncelleyelim. Bunu kismi yazmamin sebebide, adam akilli yazmamis olabilirim.

# Nedir bu shell script?
Terminali actiginda yazdigin kodlarin duzenli bir sekilde kullanilmasi diyilebilir.
Bu duzenli kodlar ".sh" uzantili dosyada tutulur(illa gerekli degil ama sen yaz).

# Baslamadan once
<p>Herseyden once shell'in "bash" olduguna emin olmaliyiz. Eger bash degil ise baska bir shell kullaniyorsaniz <code>(unknown-console)$ bash</code> komutunu vererek, shell'i degistirebiliriz. Asagi kisimda shell'in ne oldugunu ogreniyoruz.</p>

```bash
(unknown-console)$ echo $0
bash
```

<h6>Aslinda bu kisim gereksiz, sisteminizde bash olsa yeter. Cunku biz script'leriimizin hangi shell ile calisacagini, shebang kisminda yaziyoruz.</h6>

# 1. Klasik "Merhaba, Dunya!"
<p>Ilk olarak sevdiginiz editorle "1.0_hello.sh" aciyoruz. Ben "vim" ile actim. Sonrasinda asagidaki kodlari dosyanin icine yaziyoruz. Daha sonra 'chmod' komutuyla calistirma izni vermeliyiz.Sonrasinda script'imizi calistiriyoruz. '#' ifadesiyle baslayan kisimlar yorum satiri oldugunu ifade eder. '#1/' veya '#2/' gibi ifadeler gorurseniz, cumlenin devam ettigi anlamina gelir.</p>

```bash
(bash-console)$ vim 1.0_hello.sh
```

```bash
#!/usr/bin/env bash
echo 'Merhaba, Dunya!'
# Filename: < "1.0_hello.sh" >
```

```bash
(bash-console)$ chmod +x 1.0_hello.sh # '1.0_hello.sh' dosyasina calistirma hakki veriyoruz.
(bash-console)$ ./1.0_hello.sh        # Sonrasinda script'i calistiriniz.
Merhaba, Dunya!
(bash-console)$ bash 1.0_hello.sh     # Ya da usteki 2 satir yerine, 1 satirda script'i calistirabilirsiniz.
Merhaba, Dunya!
```

# 2. Degisken Kullanimi
<p>Klasik programlama bilenler zaten bu evreyi biliyor. Sadece kodda bakarakta anlayabilirsiniz. "vim" ile yeni dosya aciniz. Sonra kodlari yaziniz.</p>

```bash
(bash-console)$ vim 2.0_variables.sh
```

```bash
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

# Filename: < "2.0_variables.sh" >
```

```bash
(bash-console)$ chmod +x 2.0_variables.sh
(bash-console)$ ./2.0_variables.sh
10
Naber, Nasilsin?
Naber, Nasilsin?
Naber, Nasilsin?abc

Naber, Nasilsin?10
16
Nasilsin?
aber
```

# 3. Kullanicidan veri almak
<p>C'deki scanf(), Python'daki input(), Golang'te fmt.Scanf() fonksiyonlarina benzer yapi 'shell script' te 'read' komutuyla olur.</p>

```bash
(bash-console)$ vim 3.0_read_value.sh
```

```bash
#!/usr/bin/env bash

# Metot 1
echo "Bir sayi giriniz: "                        # Burda 'echo' komutu otomatik bir alt satira gecer.
read sayi_degiskeni_1
echo ${sayi_degiskeni_1}

# Metot 2
echo -n "Bir sayi giriniz: "                     # (-n) parametre bir alt satira gecmeyi onler.
read -n 1 sayi_degiskeni_2                       # (-n 1) ile kullanicidan sadece bir karakter alir.
echo ${sayi_degiskeni_2}

# Metot 3
read -p "Bir sayi giriniz: " sayi_degiskeni_3    # (-p) ile tek satirda kullanicidan veri alma
echo ${sayi_degiskeni_3}

# Metot 4
read -sp "Parola: " parola                       #1/ (-s) ile kullanicinin girdigi veriyi gizler,
                                                 #2/ misal parola icin kullanilir.
echo ${parola}

# Metot 5
echo -e "\tBir cok veri giriniz, ama araya bosluk koyun:"   # (-e) parametresi ile \n,\t.. gibi ifadelere izin verir.
read degisken1 degisken2 degisken3
echo ${degisken1}
echo ${degisken2}
echo ${degisken3}                                           #1/ 3 ten fazla degisken girdiyseniz,
                                                            #2/ son degiskenlerin hepsi burda toplanir.

# Filename: < "3.0_read_value.sh" >
```


# Task Listesi
- [ ] Benim kisimlerini bizime cevir.
