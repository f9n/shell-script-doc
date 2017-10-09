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
<p>Ilk olarak sevdiginiz editorle "1.0_hello.sh" aciyoruz. Ben "vim" ile actim. Sonrasinda asagidaki kodlari dosyanin icine yaziyoruz. Daha sonra 'chmod' komutuyla calistirma izni vermeliyiz.Sonrasinda script'imizi calistiriyoruz. '#' ifadesiyle baslayan kisimlar yorum satiri oldugunu ifade eder.</p>

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

# Task Listesi
- [ ] Benim kisimlerini bizime cevir.
