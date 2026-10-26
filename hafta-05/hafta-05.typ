// Kaynak: elektrik.pdf, s. 17 (5. HAFTA çizgisinden itibaren)–19
#import "/_sablon/sablon.typ": *

// Göz akımı oku: merkez etrafında saat yönünde yay ve etiket.
#let goz(merkez, ad) = {
  cetz.draw.arc(merkez, start: 120deg, delta: -280deg, radius: 0.55, anchor: "origin", stroke: cizgi, mark: (end: ">"))
  cetz.draw.content(merkez, ad)
}
#let yazi(konum, metin) = cetz.draw.content(konum, metin)

// Örnek 6 devresi (iki göz, iki gerilim kaynağı).
#let devre-6 = devre({
  import zap: *
  battery("v1", (0, 0), (0, 3), cells: 1)
  yazi((-1.2, 1.5), $12 " V"$)
  yazi((0.5, 1.85), $+$)
  yazi((0.5, 1.15), $-$)
  resistor("r1", (0, 3), (3.5, 3), label: $4 " Ω"$)
  resistor("r2", (3.5, 3), (8, 3), label: $8 " Ω"$)
  resistor("r3", (3.5, 3), (3.5, 0), label: $2 " Ω"$)
  battery("v2", (8, 3), (8, 0), cells: 1)
  yazi((9.2, 1.5), $10 " V"$)
  yazi((7.5, 1.85), $-$)
  yazi((7.5, 1.15), $+$)
  wire((0, 0), (8, 0))
  node("b", (3.5, 3))
  node("e", (3.5, 0))
  goz((1.6, 1.5), $I_A$)
  goz((6, 1.5), $I_B$)
})

// Örnek 8 devresi (gerilim kaynağı, akım kaynağı).
#let devre-8(akimlar: false) = devre({
  import zap: *
  battery("v1", (0, 0), (0, 3), cells: 1)
  yazi((-1.05, 1.5), $8 " V"$)
  yazi((0.5, 1.85), $+$)
  yazi((0.5, 1.15), $-$)
  wire((0, 3), (7, 3))
  resistor("r1", (3, 3), (3, 0), label: $4 " Ω"$)
  isource("i1", (7, 3), (7, 1.5), label: $2 " A"$)
  resistor("r2", (7, 1.5), (7, 0), label: $5 " Ω"$)
  wire((0, 0), (7, 0))
  node("b", (3, 3))
  node("e", (3, 0))
  if akimlar {
    goz((1.5, 1.5), $I_A$)
    goz((5.3, 1.5), $I_B$)
  }
})

// Örnek 9 devresi (üç gerilim kaynağı).
#let devre-9(akimlar: false) = devre({
  import zap: *
  battery("v1", (0, 0), (0, 3.5), cells: 1)
  yazi((-1.2, 1.75), $22 " V"$)
  yazi((0.5, 2.1), $+$)
  yazi((0.5, 1.4), $-$)
  resistor("r1", (0, 3.5), (3.5, 3.5), label: $4 " Ω"$)
  resistor("r2", (3.5, 3.5), (8, 3.5), label: $1 " Ω"$)
  resistor("r3", (3.5, 3.5), (3.5, 1.6), label: $6 " Ω"$)
  battery("v2", (3.5, 1.6), (3.5, 0), cells: 1)
  yazi((2.45, 0.8), $6 " V"$)
  yazi((4, 1.15), $-$)
  yazi((4, 0.45), $+$)
  resistor("r4", (8, 3.5), (8, 0), label: $5 " Ω"$)
  wire((0, 0), (3.5, 0))
  battery("v3", (3.5, 0), (8, 0), cells: 1)
  yazi((5.75, 0.65), $8 " V"$)
  yazi((5.4, -0.5), $-$)
  yazi((6.1, -0.5), $+$)
  node("b", (3.5, 3.5))
  node("e", (3.5, 0))
  if akimlar {
    goz((1.6, 1.9), $I_A$)
    goz((6, 1.9), $I_B$)
  }
})

#let icerik = [
= Çevre Akımları Yöntemi

Çevre akımları yöntemi, düğüm noktası yöntemi gibi Kirchhoff yasaları temel alınarak oluşturulmuştur. Çevre akımları yönteminin bir devreye uygulanabilmesi için öncelikle bazı kavramların bilinmesi gerekir:

#tanim("Çevre")[Kapalı bir elektrik devresinde akımın geçerek devresini tamamladığı yoldur.]

#tanim("Çevre akımı")[Bir çevrede dolaşan akımdır.]

#tanim("Kol")[İki düğüm arasında kalan ve aynı akımın geçtiği devre parçasıdır.]

#tanim("Göz")[İçerisinde kol bulunmayan çevrelerdir.]

#tanim("Göz akımı")[Bir gözde dolaşan akımdır.]

#bilgi[Analizi istenen devrede göz akımlarının yönü belirtilmemişse akım yönü saat yönünde seçilerek denklemler oluşturulur.]

#ornek(no: 6)[
Aşağıdaki devrede verilen göz akımlarının yönlerine göre $I_A$ ve $I_B$ göz akımlarının değerlerini hesaplayınız.

#sekil(id: "S1", baslik: [Örnek 6 için devre şeması], genislik: 72%)[#devre-6]
]

#cozum[
Her bir göz için denklemler şu şekildedir:

1\. göze ait denklem:
$ -12 + 4 dot I_A + 2 dot (I_A - I_B) = 0 $

2\. göze ait denklem:
$ -10 + 8 dot I_B + 2 dot (I_B - I_A) = 0 $

Denklemler düzenlenerek tekrar yazılırsa aşağıdaki denklemler elde edilir:
$ 6 dot I_A - 2 dot I_B = 12 $
$ -2 dot I_A + 10 dot I_B = 10 $

Yukarıda elde edilen iki bilinmeyenli denklemler çözüldüğünde $I_A = 2,5 " A"$ ve $I_B = 1,5 " A"$ olarak elde edilir.
]

#ornek(no: 8)[
Aşağıdaki devre için göz akımlarını ve yönlerini belirleyerek $4 " Ω"$'luk direncin uçları arasındaki gerilimi ve harcanan gücü bulunuz.

#sekil(id: "S2", baslik: [Örnek 8 için devre şeması], genislik: 62%)[#devre-8()]
]

#cozum[
$I_B$ akımının dolaştığı gözde $5 " Ω"$'luk dirence seri bağlı $2 " A"$'lik bir akım kaynağı yer almaktadır. Bu kaynağın değeri, bu gözde dolaşan $I_B$ göz akımının değerine eşittir: $I_B = 2 " A"$.

#sekil(id: "S3", baslik: [Çözüm 8 için devre şeması], genislik: 62%)[#devre-8(akimlar: true)]

Ancak bu eşitliği yazarken seçilen göz akımının yönü ile akım kaynağının yönünün aynı olmasına dikkat edilmelidir. İkinci gözdeki göz akımının değeri belli olduğundan ($I_B = 2 " A"$), birinci gözde dolaşan $I_A$ akımı aşağıdaki denklemden kolaylıkla bulunur:
$ -8 + 4 dot (I_A - I_B) = 0 $
$ -8 + 4 dot (I_A - 2) = 0 arrow I_A = 4 " A" $

$4 " Ω"$'dan geçen akım:
$ I_"4Ω" = I_A - I_B = 2 " A" $

$4 " Ω"$'un uçları arasındaki gerilim:
$ V_"4Ω" = 4 dot 2 = 8 " V" $

$4 " Ω"$'da harcanan güç:
$ P_"4Ω" = I_"4Ω"^2 dot R = 2^2 dot 4 = 16 " W" $
]

#ornek(no: 9)[
Aşağıdaki devrede çevre akımları yöntemini kullanarak $6 " Ω"$'dan geçen akımı ve $6 " Ω"$'un uçları arasındaki gerilimi hesaplayınız.

#sekil(id: "S4", baslik: [Örnek 9 için devre şeması], genislik: 72%)[#devre-9()]
]

#cozum[
Seçilen göz akımlarının yönlerine göre göz denklemleri:

#sekil(id: "S5", baslik: [Çözüm 9 için devre şeması], genislik: 72%)[#devre-9(akimlar: true)]

1\. göze ait denklem:
$ -22 + 4 dot I_A + 6 dot (I_A - I_B) - 6 = 0 $

2\. göze ait denklem:
$ 6 + 6 dot (I_B - I_A) + 1 dot I_B + 5 dot I_B + 8 = 0 $

1\. ve 2. göze ait olan denklemler düzenlenirse:
$ 10 dot I_A - 6 dot I_B = 28 $
$ -6 dot I_A + 12 dot I_B = -14 $

Denklemler çözülerek $I_A = 3 " A"$ ve $I_B = 0,33 " A"$ olarak bulunur.

$6 " Ω"$'dan geçen akım:
$ I_"6Ω" = I_A - I_B = 2,67 " A" $

$6 " Ω"$'un uçları arasındaki gerilim:
$ V_"6Ω" = 6 dot I_"6Ω" = 6 dot 2,67 = 16,02 " V" $
]
]

#show: ders.with(hafta: 5)
#icerik
