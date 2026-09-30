#let bm211(body) = {
  set document(title: "BM211 - Elektrik ve Elektronik Devreleri")
  set page(
    paper: "a4",
    margin: (top: 1.8cm, bottom: 1.7cm, x: 2.1cm),
    numbering: "1",
    footer: context [
      #h(1fr)
      #text(size: 8pt, fill: rgb("677184"))[BM211 · Elektrik ve Elektronik Devreleri]
      #h(1fr)
      #text(size: 8pt, fill: rgb("677184"))[#counter(page).display()]
    ],
  )
  set text(font: "Libertinus Serif", size: 10.5pt, lang: "tr")
  set par(justify: true, leading: 0.62em)
  set heading(numbering: "1.")
  show heading.where(level: 1): set text(size: 15pt, weight: "bold", fill: rgb("203957"))
  show heading.where(level: 2): set text(size: 12pt, weight: "bold", fill: rgb("203957"))
  show heading: it => {
    v(0.65em)
    it
    v(0.15em)
  }
  align(center)[
    #text(size: 21pt, weight: "bold", fill: rgb("203957"))[BM211]
    #v(0.25em)
    #text(size: 15pt, weight: "bold")[Elektrik ve Elektronik Devreleri]
  ]
  v(0.6cm)
  body
}

#let week_one_content = [
= Elektrik Akımı

Elektrik akımı, elektrik yüklerinin bir devrede yer değiştirmesiyle oluşur. Metal iletkenlerde bu hareketi elektronlar sağlar. Akım, birim zamanda geçen yük miktarıdır:

$ I = (d q)/(d t) $

Akımın birimi amperdir ($"A"$). Geleneksel akım yönü, elektronların hareket yönünün tersidir.

Elektronlar kaynağın eksi kutbundan artı kutbuna; geleneksel akım ise artı kutuptan eksi kutba doğru kabul edilir.

#figure(
  image("/01-hafta/assets/akim-yonleri.svg", width: 94%),
  caption: [Geleneksel akım yönü ve elektronların hareket yönü],
)

== Doğru ve Alternatif Akım

Doğru akımın yönü değişmez. Alternatif akımın yönü ve değeri zamanla periyodik olarak değişir.

#figure(
  image("/01-hafta/assets/akim-grafikleri.svg", width: 94%),
  caption: [Doğru ve alternatif akımın zamana göre değişimi],
)

#pagebreak()
= Gerilim

Gerilim $V$ ile gösterilir ve birimi volttur ($"V"$). Bir elektrik devresinde iki nokta arasındaki potansiyel farka gerilim denir. Elektrik yükleri, potansiyel enerjilerinin yüksek olduğu noktadan düşük olduğu noktaya doğru hareket eder; metal iletkenlerde bu hareketi elektronlar gerçekleştirir.

#figure(
  image("/01-hafta/assets/gerilim-devresi.svg", width: 90%),
  caption: [Devrede $a$ ve $b$ noktaları arasındaki gerilim],
)

== Elektrik Enerjisinin Dağıtımı

Termik, hidrolik ve Y.E.K. kaynaklarından gelen enerji, trafo merkezinden Ankara, Yenimahalle ve Gazi Üniversitesi üzerinden yüke iletilir.

#figure(
  image("/01-hafta/assets/dagitim-semasi.svg", width: 96%),
  caption: [Üretim kaynaklarından yüke uzanan dağıtım şeması],
)

#pagebreak()
= Güç

Güç, birim zamanda yapılan iştir. $P$ ile gösterilir; birimi Watt'tır ($"W"$).

$ P = I dot V $

*Örnek.* $V = 79 " V"$ ve $I = 0,46 " A"$ için:

#figure(
  image("/01-hafta/assets/guc-devresi.svg", width: 86%),
  caption: [Güç hesabında kullanılan devre],
)

$ P = (79 " V") dot (0,46 " A") = 36,34 " W" $

= Devre Elemanları

Devre elemanları aktif ve pasif olarak ikiye ayrılır. Enerji sağlayan elemanlar aktif, enerji tüketen elemanlar pasiftir.

== Kaynaklar

Kimyasal enerjiyi elektrik enerjisine çeviren pil ve doğru akım üreten dinamolar; alternatif akım üreten alternatörler aktif devre elemanlarıdır. Pil, bağımsız gerilim kaynağının bir örneğidir. Bağımsız akım kaynakları da devrelerde kullanılır.

#figure(
  image("/01-hafta/assets/kaynak-sembolleri.svg", width: 94%),
  caption: [Pil, bağımsız gerilim kaynağı ve bağımsız akım kaynağı sembolleri],
)

#pagebreak()
== Direnç

Direnç, iletkende elektronların hareketine karşı oluşan zorluğu ifade eder. Bir iletkenin direnci, uzunluğu ve kesit alanıyla ilişkilidir:

$ R = rho dot ell / S $

Burada $R$ direnç, $rho$ özdirenç, $ell$ iletken uzunluğu ve $S$ iletkenin kesit alanıdır. Uzunluk arttıkça direnç artar; kesit alanı arttıkça direnç azalır.

Direncin tersi iletkenliktir. İletkenlik $G$ ile gösterilir; birimi Siemens ($"S"$) olarak ifade edilir:

$ G = 1 / R $

*Örnek.* Uzunluğu $1200 " cm"$, kesit alanı $4 " mm"^2$ ve özdirenci $rho = 0,017$ ohm olan iletkenin direnci ve iletkenliği:

#figure(
  image("/01-hafta/assets/direnc-geometrisi.svg", width: 94%),
  caption: [İletkenin uzunluğu ve kesit alanı],
)

$ R = rho dot ell / S = 0,017 dot 12 / 4 = 0,051 " Ω" $

$ G = 1 / R = 1 / (0,051 " Ω") approx 19,6 " S" $

== Direnç Renk Kodları

#let renk_hucresi(ad, ton) = [
  #box(width: 0.8em, height: 0.8em, fill: ton, stroke: 0.4pt + rgb("566273"))
  #h(0.35em)
  #ad
]

#table(
  columns: (1.35fr, 0.65fr, 0.8fr, 0.9fr),
  inset: (x: 6pt, y: 2.5pt),
  stroke: 0.4pt + rgb("D7DFE8"),
  table.header(
    table.cell(fill: rgb("EAF0F5"))[*Renk*],
    table.cell(fill: rgb("EAF0F5"))[*Rakam*],
    table.cell(fill: rgb("EAF0F5"))[*Çarpan*],
    table.cell(fill: rgb("EAF0F5"))[*Tolerans*],
  ),
  renk_hucresi("Siyah", rgb("1B2630")), [0], [$10^0$], [—],
  renk_hucresi("Kahverengi", rgb("7A4E35")), [1], [$10^1$], [±1%],
  renk_hucresi("Kırmızı", rgb("C43D36")), [2], [$10^2$], [±2%],
  renk_hucresi("Turuncu", rgb("E7812D")), [3], [$10^3$], [—],
  renk_hucresi("Sarı", rgb("E9C734")), [4], [$10^4$], [—],
  renk_hucresi("Yeşil", rgb("36875D")), [5], [$10^5$], [±0,5%],
  renk_hucresi("Mavi", rgb("3274B0")), [6], [$10^6$], [±0,25%],
  renk_hucresi("Mor", rgb("8759A4")), [7], [$10^7$], [±0,1%],
  renk_hucresi("Gri", rgb("9299A1")), [8], [$10^8$], [±0,05%],
  renk_hucresi("Beyaz", rgb("FFFFFF")), [9], [$10^9$], [—],
  renk_hucresi("Altın", rgb("D7B13A")), [—], [$10^(-1)$], [±5%],
  renk_hucresi("Gümüş", rgb("BAC1C9")), [—], [$10^(-2)$], [±10%],
  [Bant yok], [—], [—], [±20%],
)

#text(size: 9pt, fill: rgb("58677A"))[Hoca sınavda bu tabloyu verecek, ezbere gerek yok.]

*Üç renk bandı:* İlk iki bant yan yana yazılan sayının rakamlarını, üçüncü bant çarpanı verir. Tolerans bandı yoksa tolerans $±20%$ alınır.

$ R = A B dot 10^C quad (±20%) $

*Örnek.* Kırmızı, yeşil ve siyah bantlar sırasıyla $2$, $5$ ve $0$ değerlerini verir:

$ R = 25 dot 10^0 = 25 " Ω" quad (±20%) $

$ R_"min" = 20 " Ω", quad R_"maks" = 30 " Ω" $

*Dört renk bandı:* İlk iki bant sayısal değerleri, üçüncü bant çarpanı, dördüncü bant toleransı gösterir.

$ R = A B dot 10^C quad (±T) $

*Beş renk bandı:* İlk üç bant sayısal değerleri, dördüncü bant çarpanı, beşinci bant toleransı gösterir.

$ R = A B C dot 10^D quad (±T) $

*Örnek.* Kırmızı, yeşil, siyah, altın ve gümüş bantların değerleri sırasıyla $2$, $5$, $0$, $-1$ ve $±10%$ olur:

$ R = 250 dot 10^(-1) = 25 " Ω" quad (±10%) $

$ R_"min" = 22,5 " Ω", quad R_"maks" = 27,5 " Ω" $

#figure(
  image("/01-hafta/assets/direnc-renkleri.svg", width: 94%),
  caption: [Üç ve beş bantlı direnç örnekleri],
)
]

#show: bm211
#week_one_content
