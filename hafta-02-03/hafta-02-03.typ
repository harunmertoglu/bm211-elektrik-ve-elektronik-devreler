#import "../hafta-01/hafta-01.typ": bm211

// Kaynak: 4.hafta.pdf, s. 6 (Ohm Kanunu)–15 (HAFTA 4 çizgisine kadar).
// 2 ve 3. haftaların sınırı bilinmediğinden kullanıcı isteğiyle birleştirildi.
// Açık alt indis/eleman etiketi hataları kullanıcı onayıyla düzeltildi.
#let week_two_three_content = [
= Ohm Kanunu

Ohm kanunu; akım, direnç ve gerilim arasındaki ilişkiyi tanımlar. Elektronik devre çözümlerinde sıkça kullanılır.

$ V = I dot R $

Burada $V$ gerilim (volt, $"V"$), $I$ akım (amper, $"A"$) ve $R$ dirençtir (ohm, $"Ω"$).

= Bağlantı Şekillerine Göre Devreler

Seri ve paralel olmak üzere iki farklı bağlantı şekli vardır. Her iki bağlantı türünün de bulunduğu karışık bağlantılı devreler de vardır.

== Seri Bağlı Dirençlerden Oluşan Devreler

#figure(
  image("assets/seri-genel.svg", width: 94%),
  caption: [Seri bağlı dirençler],
)

$R_"eş"$, devredeki tüm dirençleri temsil eden *eş değer dirençtir*.

#figure(
  image("assets/seri-esdeger.svg", width: 68%),
  caption: [Seri devrenin eş değer dirençle gösterimi],
)

Bir direncin uçlarından biri diğer direncin ucuna ortak bağlıysa bu dirençler seri bağlıdır.

$ R_"eş" = R_1 + R_2 + R_3 + dots + R_x $

#pagebreak()
=== Örnek: İki Seri Direnç

*Soru.* $25 " V"$’luk gerilim kaynağına $R_1 = 2 " Ω"$ ve $R_2 = 3 " Ω"$ dirençleri seri bağlanmıştır.

#figure(
  image("assets/seri-25v.svg", width: 94%),
  caption: [$25 " V"$ kaynaklı seri devre],
)

a) Toplam akım $I$ ve eş değer direnç $R_"eş"$; b) $I_(R_1)$; c) $I_(R_2)$; d) $V_(R_1)$; e) $V_(R_2)$; f) $P_T$, $P_(R_1)$ ve $P_(R_2)$ değerlerini bulunuz.

*a) Eş değer direnç ve toplam akım*

$ R_"eş" = R_1 + R_2 = 2 + 3 = 5 " Ω" $
$ V = I dot R_"eş" arrow 25 = I dot 5 arrow I = 5 " A" $

*b–c) Direnç akımları*

Seri bağlı dirençlerden geçen akımlar birbirine eşittir.

$ I = I_1 = I_2 arrow I_1 = 5 " A", quad I_2 = 5 " A" $

*d–e) Direnç gerilimleri*

Seri bağlı dirençlerde gerilim, direnç değerleriyle doğru orantılı olarak paylaşılır.

$ V_(R_1) = I_(R_1) dot R_1 = 5 dot 2 = 10 " V" $
$ V_(R_2) = I_(R_2) dot R_2 = 5 dot 3 = 15 " V" $

*f) Güçler*

$ P = V dot I = I^2 dot R $
$ P_T = 25 dot 5 = 125 " W" $
$ P_(R_1) = I_(R_1)^2 dot R_1 = 5^2 dot 2 = 50 " W" $
$ P_(R_2) = I_(R_2)^2 dot R_2 = 5^2 dot 3 = 75 " W" $
$ P_T = P_(R_1) + P_(R_2) arrow 125 = 50 + 75 $

#pagebreak()
== Örnek 7, 8 ve 9

=== Örnek 7: Seri Devre

#figure(
  image("assets/ornek-7.svg", width: 94%),
  caption: [$56 " V"$ kaynağa seri bağlı $8 " Ω"$ ve $6 " Ω"$ dirençler],
)

$ R_"eş" = 8 + 6 = 14 " Ω" $
$ V = I dot R_"eş" arrow 56 = I dot 14 arrow I = 4 " A" = I_1 = I_2 $

$ V_1 = 4 dot 8 = 32 " V" $
$ V_2 = 4 dot 6 = 24 " V" $
$ V = V_1 + V_2 $

$ P = V dot I = 56 dot 4 = 224 " W" $
$ P_1 = I_1^2 dot R_1 = 4^2 dot 8 = 128 " W" $
$ P_2 = I_2^2 dot R_2 = 4^2 dot 6 = 96 " W" $

#pagebreak()
=== Örnek 8: Paralel Devre

#figure(
  image("assets/ornek-8.svg", width: 94%),
  caption: [$48 " V"$ kaynağa paralel bağlı $4 " Ω"$ ve $6 " Ω"$ dirençler],
)

$ R_"eş" = R_1 parallel R_2 = (R_1 dot R_2) / (R_1 + R_2) = 24 / 10 = 2,4 " Ω" $

#figure(
  image("assets/paralel-48v-esdeger.svg", width: 78%),
  caption: [Devrenin $2,4 " Ω"$ eş değer dirençle gösterimi],
)

$ V = I dot R_"eş" arrow 48 = I dot 2,4 arrow I = 20 " A" $
$ I_1 = 12 " A", quad I_2 = 8 " A" $

$ V_1 = I_1 dot R_1 = 12 dot 4 = 48 " V" $
$ V_2 = I_2 dot R_2 = 8 dot 6 = 48 " V" $

$ P = I dot V = 20 dot 48 = 960 " W" $
$ P_1 = I_1^2 dot R_1 = 12^2 dot 4 = 576 " W" $
$ P_2 = I_2^2 dot R_2 = 8^2 dot 6 = 384 " W" $

#pagebreak()
=== Örnek 9: Karışık Devre

#figure(
  image("assets/ornek-9.svg", width: 96%),
  caption: [$50 " V"$ kaynaklı karışık devre],
)

$ R_"eş" = R_1 + R_4 + (R_2 dot R_3) / (R_2 + R_3) = 2 + 3 + (10 dot 10) / (10 + 10) = 10 " Ω" $
$ V = I dot R arrow 50 = I dot 10 arrow I = 5 " A" $

$ I_1 = 5 " A", quad I_2 = I_3 = 2,5 " A", quad I_4 = 5 " A" $

$ V_1 = I_1 dot R_1 = 5 dot 2 = 10 " V" $
$ V_2 = I_2 dot R_2 = 2,5 dot 10 = 25 " V" $
$ V_3 = I_3 dot R_3 = 2,5 dot 10 = 25 " V" $
$ V_4 = I_4 dot R_4 = 5 dot 3 = 15 " V" $

$ P = I dot V = 5 dot 50 = 250 " W" $
$ P_1 = I_1^2 dot R_1 = 5^2 dot 2 = 50 " W" $
$ P_2 = I_2^2 dot R_2 = (2,5)^2 dot 10 = 62,5 " W" $
$ P_3 = I_3^2 dot R_3 = (2,5)^2 dot 10 = 62,5 " W" $
$ P_4 = I_4^2 dot R_4 = 5^2 dot 3 = 75 " W" $

Direnç güçlerinin toplamı $250 " W"$’tır.

#pagebreak()
== Paralel Bağlı Dirençlerden Oluşan Devreler

Dirençlerin iki ucunun da ortak bağlı olduğu devre türüdür.

#figure(
  image("assets/paralel-genel.svg", width: 90%),
  caption: [Paralel bağlı dirençler],
)

$ R_"eş" = R_1 parallel R_2 parallel dots parallel R_x $

#figure(
  image("assets/paralel-iki.svg", width: 78%),
  caption: [İki paralel dirençten oluşan devre],
)

İki paralel direncin eş değer direnci bulunurken şu formül kullanılır:

$ R_"eş" = (R_1 dot R_2) / (R_1 + R_2) $

$ V = V_(R_1) = V_(R_2) = dots = V_(R_x) $

Paralel bağlı devrelerde direnç akımları, direnç değerleriyle ters orantılıdır.

#pagebreak()
=== Örnek: İki Paralel Direnç

*Soru.* $12 " V"$ gerilim kaynağına $R_1 = 6 " Ω"$ ve $R_2 = 3 " Ω"$ dirençleri paralel bağlanmıştır.

#figure(
  image("assets/paralel-12v.svg", width: 94%),
  caption: [$12 " V"$ kaynaklı paralel devre],
)

a) $R_"eş"$; b) $I$, $I_(R_1)$ ve $I_(R_2)$; c) $V_(R_1)$ ve $V_(R_2)$; d) $P_T$, $P_(R_1)$ ve $P_(R_2)$ değerlerini bulunuz.

*a) Eş değer direnç*

$ R_"eş" = (R_1 dot R_2) / (R_1 + R_2) = (6 dot 3) / (6 + 3) = 18 / 9 = 2 " Ω" $

*b) Toplam akım ve direnç akımları*

$ V = I dot R_"eş" arrow 12 = I dot 2 arrow I = 6 " A" $

Birinci yol:

$ I_1 = x, quad I_2 = 2x $
$ 3x = 6 " A" arrow x = 2 " A" $
$ I_1 = 2 " A", quad I_2 = 4 " A" $

İkinci yol:

$ V_1 = I_1 dot R_1 arrow 12 = I_1 dot 6 arrow I_1 = 2 " A" $
$ V_2 = I_2 dot R_2 arrow 12 = I_2 dot 3 arrow I_2 = 4 " A" $

*c) Direnç gerilimleri*

$ V = V_1 = V_2 arrow V_1 = 12 " V", quad V_2 = 12 " V" $

*d) Güçler*

$ P_T = V dot I = 12 dot 6 = 72 " W" $
$ P_1 = V_1 dot I_1 = 12 dot 2 = 24 " W" $
$ P_2 = V_2 dot I_2 = 12 dot 4 = 48 " W" $

#pagebreak()
== Karışık Bağlı Dirençlerden Oluşan Devreler

=== Üçgen–Yıldız ($Delta$–Y) Dönüşümleri

#figure(
  image("assets/ucgen-yildiz.svg", width: 82%),
  caption: [Üçgen ve yıldız bağlantı şekilleri],
)

=== Örnek: Seri ve Paralel Dirençler

#figure(
  image("assets/karisik-15v.svg", width: 94%),
  caption: [$15 " V"$ kaynaklı karışık devre],
)

*a) Eş değer direnç*

$ R_"eş" = R_1 + (R_2 parallel R_3) $
$ R_"eş" = 3 + (6 dot 3) / (6 + 3) = 5 " Ω" $

*b) $I$, $I_1$, $I_2$ ve $I_3$ akımları*

i) Toplam akım:

$ V = I dot R_"eş" arrow 15 " V" = I dot 5 " Ω" arrow I = 3 " A" $
$ I_1 = 3 " A" $

ii) Paralel kollardaki akımlar:

$ I_2 = x, quad I_3 = 2x $
$ 3x = 3 " A" arrow x = 1 " A" $
$ I_2 = 1 " A", quad I_3 = 2 " A" $

#block(breakable: false)[
*c) $V_1$, $V_2$ ve $V_3$ gerilimleri*

$ V_1 = I_1 dot R_1 = 3 dot 3 = 9 " V" $
$ V_2 = I_2 dot R_2 = 1 dot 6 = 6 " V" $
$ V_3 = I_3 dot R_3 = 2 dot 3 = 6 " V" $

$R_2$ ve $R_3$ paralel bağlıdır.
]

*d) $P_T$, $P_1$, $P_2$ ve $P_3$ güçleri*

$ P_T = V dot I = 15 dot 3 = 45 " W" $
$ P_1 = I_1^2 dot R_1 = 9 dot 3 = 27 " W" $
$ P_2 = I_2^2 dot R_2 = 1^2 dot 6 = 6 " W" $
$ P_3 = I_3^2 dot R_3 = 2^2 dot 3 = 12 " W" $
$ P_T = P_1 + P_2 + P_3 arrow 45 = 27 + 6 + 12 $
]

#show: bm211
#week_two_three_content
