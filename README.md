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

# Klasik "Merhaba, Dunya!"
<p>Ilk olarak sevdiginiz editorle "hello.sh" aciyoruz. Ben "vim" ile actim. Sonrasinda asagidaki kodlari dosyanin icine yaziyoruz. Daha sonra 'chmod' komutuyla calistirma izni vermeliyiz.Sonrasinda script'imizi calistiriyoruz.</p>

```bash
(bash-console)$ vim hello.sh
```

```bash
#!/usr/bin/env bash
echo 'Merhaba, Dunya!'
                                                                                        # < "hello.sh" >
```

```bash
(bash-console)$ chmod +x hello.sh
(bash-console)$ ./hello.sh
Merhaba, Dunya!
```


# Task Listesi
- [ ] Benim kisimlerini bizime cevir.
