import 'package:flutter/material.dart';
import 'package:quiz3/felsf2.dart';
import 'package:quiz3/smiley2.dart';
import 'package:shimmer/shimmer.dart';

class Cevaplar21 extends StatefulWidget {
  const Cevaplar21({super.key}); //sonradan

  @override
  State<Cevaplar21> createState() => _Cevaplar21State();
}

class _Cevaplar21State extends State<Cevaplar21> {
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
                  "17- Bakunin Devlet ve Anarşi eserinde 'Hayatın kaynağı ve tek yol göstericisi düşünce olursa toplum bilgi ve bilim tarafından yönetilirse o zaman vay insanlığın haline! Kupkuru bir hayat olacaktır böylesi. Koyun sürüsünden farksız bir insan toplumu ortaya çıkacaktır. Ve sonuç: dilsiz ve köle ruhlu bir aptallar dünyası.' demiştir.\n19- Hegel Tarihte Akıl eserinde 'Devleti devlet yapan, halk değil, bilgi ve kültürdür.' demiştir.\n22-Russell Eğitim Üzerine eserinde öğretim sevgisiz ise bilimsel metotlara göre uygun olsa da faydasız olacağını söylemiştir.\n23- Mevlana Mesnevi eserinde insanın bedene maddeye ve surete takılmaması gerektiğini savunmuştur. 'Bedene tapan cehenneme gider' demiştir.\n25- Platon Devlet eserinde iyi olan şeyin halk için zevkte aydın kişiler için ise düşüncede olduğunu söylemiştir.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
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
              Padding(
                padding: const EdgeInsets.all(12.0),
                //  child: ElevatedButton(onPressed: null, child: Text('Felsefeye dön')),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, //burada da bir navigasyon yani sayfalar arasi gecis kullandik
                          MaterialPageRoute(
                              builder: (context) => const PageHome()));
                    },
                    child: const Text('Puan Ver')),
              ),
            ],
          ), //Column widgettir kolon demek. Alt öğelerini dikey bir dizide görüntüleyen bir pencere öğesi.
        )
        //iskele scaffold, Temel Materyal Tasarımı görsel yerleşim yapısını uygular.
        );
  }
}
