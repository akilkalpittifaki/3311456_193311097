import 'package:flutter/material.dart';
import 'package:quiz3/cevaplardevam.dart';
import 'package:quiz3/newekransmiley.dart';
import 'package:shimmer/shimmer.dart';

class Cevaplar extends StatefulWidget {
  const Cevaplar({super.key}); //sonradan

  @override
  State<Cevaplar> createState() => _CevaplarState();
}

class _CevaplarState extends State<Cevaplar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cevabı "Yanlış" olan soruların doğru halleri'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/ress.jpg'),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "2- Nietzsche\'nin Ecce Homo eserinde hayranlık duyduğu Wagner bir felsefeci değil müzisyendir. \n4- Sokrates Savunma yaptıktan sonra beraat etmemiş ölüm cezası almıştır. Fikirleri için ölmüştür.\n5- David Hume\'un Din Üzerine eserinde Hume ve bir ilahiyatçı 2 farklı insan değil tek bir insan olan Hume kendi kendine tartışmaktadır. İlahiyatçı tarafı konuşturan da Hume'dur. \n9-Rosseau Toplum Sözleşmesi eserinde devleti sağlamlaştıracak olan şeyin fakir ve zengin arasındaki farkın azalması olduğunu söylemiştir. Çok varlıklıların da çok yoksulların da olmaması gerektiğini söylemiştir.\n10-Sartre Varlık ve Hiçlik eserinde insanın özgür olup olmamak konusunda seçim hakkı olmadığını 'Biz seçen bir özgürlüğüz ama özgür olmayı seçmiyoruz. Biz özgürlüğe mahkumuz. Biz özgürlüğün içine fırlatılmışız.' demiştir.\n12- Freud Uygarlığın Huzursuzluğu eserinde insanın en savunmasız zamanı sevdiği zamandır demiştir. \n13- Karl Popper Açık Toplum ve Düşmanları eserinde 'Hiçbir fikir kesin olarak ispat edilemeyeceği için uğrunda ölmek aptallıktır.' demiştir.\n14- Farabi Erdemliler Şehri eserinde insanın yaratıcıya ulaşmak için maddeci olması gerektiğini değil maddeden sıyrılması gerektiğini savunmuştur. 'Nihayet maddeden tamamiyle sıyrıldığımız anda zihnimiz onu en mükemmel surette kavrar.' demiştir.  ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              /*
              Padding(
                padding: const EdgeInsets.all(8.0),
                //  child: ElevatedButton(onPressed: null, child: Text('Felsefeye dön')),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Text('Anasayfa'),
                ),
              ),
              */

              Padding(
                padding: const EdgeInsets.all(12.0),
                //  child: ElevatedButton(onPressed: null, child: Text('Felsefeye dön')),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, //burada da bir navigasyon yani sayfalar arasi gecis kullandik
                          MaterialPageRoute(
                              builder: (context) => const Cevaplar31()));
                    },
                    child: const Text('Puan Ver')),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                //  child: ElevatedButton(onPressed: null, child: Text('Felsefeye dön')),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, //burada da bir navigasyon yani sayfalar arasi gecis kullandik
                        MaterialPageRoute(
                            builder: (context) => const Cevaplar21()));
                  },
                  child: Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.yellow,
                    child: const Text(
                      'Cevap Anahtarı Devam',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ), //Column widgettir kolon demek. Alt öğelerini dikey bir dizide görüntüleyen bir pencere öğesi.
        )
        //iskele scaffold, Temel Materyal Tasarımı görsel yerleşim yapısını uygular.
        );
  }
}
