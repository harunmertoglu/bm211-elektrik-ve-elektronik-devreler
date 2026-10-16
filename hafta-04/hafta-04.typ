#import "../hafta-01/hafta-01.typ": bm211

// Kaynak: 4.hafta.pdf, s. 15 (HAFTA 4 çizgisinden itibaren)–17.
#let week_four_content = [
= Kirchhoff Kanunları

#figure(
  image("assets/dugum-kol-cevre.svg", width: 96%),
  caption: [Düğüm noktaları ve kolların gösterildiği devre],
)

*Düğüm noktası:* İki ya da daha fazla devre elemanının bağlı olduğu noktaya düğüm noktası denir.

*Kol:* Her bir devre elemanının üzerinde yer aldığı devre parçasıdır.

*Çevre:* Bir düğüm noktasından başlayıp devre elemanlarının üzerinden geçerek tekrar aynı düğüm noktasına gelen kapalı yol bir çevre oluşturur.

#pagebreak()
== Kirchhoff’un Gerilim Yasası

Kapalı bir devrede tüm gerilimlerin cebirsel toplamı sıfırdır.

#figure(
  image("assets/gerilim-yasasi.svg", width: 82%),
  caption: [Gerilim yönleri, kutuplar ve çevre yönü],
)

$ +V_1 + V_2 + V_3 - V = 0 $
$ V = V_1 + V_2 + V_3 $

*Örnek.* $15 " V"$ gerilim kaynağına bağlı $R_1 = 5 " Ω"$, $R_2 = 2 " Ω"$ ve $R_3 = 3 " Ω"$ dirençlerinden oluşan devre:

#figure(
  image("assets/gerilim-15v.svg", width: 82%),
  caption: [Gerilim yasasının uygulandığı $15 " V"$’luk devre],
)

$ V_1 + V_2 + V_3 - V = 0 $
$ V = I dot R_"eş" arrow 15 " V" = I dot 10 " Ω" arrow I = 1,5 " A" $
$ 7,5 " V" + 3 " V" + 4,5 " V" = 15 " V" $

#pagebreak()
== Kirchhoff’un Akım Yasası

Bir düğüm noktasına gelen akımların toplamı, düğümden çıkan akımların toplamına eşittir. Gelen akımlar negatif, çıkan akımlar pozitif işaretle gösterilir.

#figure(
  image("assets/akim-yasasi.svg", width: 76%),
  caption: [Düğüme gelen ve düğümden çıkan akımlar],
)

$ -I_1 - I_2 + I_3 + I_4 + I_5 = 0 $
$ I_3 + I_4 + I_5 = I_1 + I_2 $

Çıkan akımların toplamı = giren akımların toplamı.

*Örnek.* Aşağıdaki düğümde $x$ akımını bulalım.

#figure(
  image("assets/akim-ornek.svg", width: 76%),
  caption: [Bilinmeyen $x$ akımının bulunması],
)

$ -12 " A" - 2 " A" + 3 " A" + 2 " A" + x = 0 $
$ x = 9 " A" $

#pagebreak()
== Örnek Devre Çözümü

*Soru.* Aşağıdaki devrede eş değer direnç $R_"eş"$ ile $I$, $I_2$ ve $I_3$ akımlarını bulunuz.

#figure(
  image("assets/kirchhoff-21v.svg", width: 100%),
  caption: [$21 " V"$ kaynaklı devre ve aranan akımlar],
)

$ R_"eş" = R_1 + (R_2 parallel R_3) + (R_4 parallel (R_5 + R_6)) + R_7 $

#figure(
  image("assets/kirchhoff-esdeger.svg", width: 86%),
  caption: [Paralel kolların indirgenmesiyle elde edilen devre],
)

Gerilim yasası:

$ -21 + 2 I + 2 I + 2 I + I = 0 arrow I = 3 " A" $

Eş değer direnç ve toplam akım:

$ R_"eş" = 2 + 2 + 2 + 1 = 7 " Ω" $
$ I = V / R_"eş" = (21 " V") / (7 " Ω") = 3 " A" $

Akım yasası:

$ -I + I_2 + I_3 = 0 $
$ I_2 + I_3 = 3 " A" $
$ I_2 = 2 " A", quad I_3 = 1 " A" $
]

#show: bm211
#week_four_content
