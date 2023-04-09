import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:quiz3/cevaplar.dart';
import 'package:quiz3/fotos.dart';
import 'package:quiz3/galeri.dart';
import 'package:quiz3/galery_page.dart';
import 'package:quiz3/internet.dart';
import 'package:quiz3/panel.dart';
import 'package:quiz3/photo_view.dart';
import 'package:quiz3/video.dart';
import 'package:quiz3/video4.dart';
import 'package:quiz3/youtube.dart';
import 'package:shimmer/shimmer.dart';

import 'group.dart';

class Hakkinda extends StatefulWidget {
  const Hakkinda({super.key});

  @override
  State<Hakkinda> createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  //bu kismi felsefe onemi yaptik sonradan
  //final GoogleAds _googleAds = GoogleAds(); //olusturdugumuz clastan bir sinif olusturabiliriz.  locator kullanmıyorsan.

  @override
  Widget build(BuildContext context) {
    //return Column(
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 230, 225),
        appBar: AppBar(
          title: const Text('Felsefe Önemi'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/filomini.jpg"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Toplumdaki problemlerin çok büyük bir çoğunluğunun sebebi düşünmemek, sorgulamamak, ve kendinden emin olmaktir.",
                  style: TextStyle(fontSize: 18),
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
                  child: const Text('Anasayfaya Dön'),
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
                            builder: (context) => const Cevaplar()));
                  },
                  child: Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.yellow,
                    child: const Text(
                      'Cevap Anahtarı',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                //  child: ElevatedButton(onPressed: null, child: Text('Felsefeye dön')),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, //burada da bir navigasyon yani sayfalar arasi gecis kullandik
                          MaterialPageRoute(
                              builder: (context) => const Video()));
                    },
                    child: const Text('Kant İyi Yaşam Video')),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                //  child: ElevatedButton(onPressed: null, child: Text('Felsefeye dön')),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, //burada da bir navigasyon yani sayfalar arasi gecis kullandik
                          MaterialPageRoute(
                              builder: (context) => GalleryPage()));
                    },
                    child: const Text('Filozoflar Fotoğraf Galeri')),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                //  child: ElevatedButton(onPressed: null, child: Text('Felsefeye dön')),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, //burada da bir navigasyon yani sayfalar arasi gecis kullandik
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage22()));
                    },
                    child: const Text('Gruplandırılmış Filozoflar Listesi')),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                //  child: ElevatedButton(onPressed: null, child: Text('Felsefeye dön')),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, //burada da bir navigasyon yani sayfalar arasi gecis kullandik
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage18()));
                    },
                    child: const Text('Felsefe yükleniyor')),
              ),
            ],
          ), //Column widgettir kolon demek. Alt öğelerini dikey bir dizide görüntüleyen bir pencere öğesi.
        )
        //iskele scaffold, Temel Materyal Tasarımı görsel yerleşim yapısını uygular.
        );
  }
}
