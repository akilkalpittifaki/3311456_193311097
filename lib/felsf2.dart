import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Cevaplar5 extends StatefulWidget {
  const Cevaplar5({super.key}); //sonradan

  @override
  State<Cevaplar5> createState() => _Cevaplar5State();
}

class _Cevaplar5State extends State<Cevaplar5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cevabı "Yanlış" olan soruların doğru halleri'),
      ),
      body: SizedBox(
        width: 200.0,
        height: 100.0,
        child: Shimmer.fromColors(
          baseColor: Colors.red,
          highlightColor: Colors.yellow,
          child: const Text(
            'Shimmer',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      //iskele scaffold, Temel Materyal Tasarımı görsel yerleşim yapısını uygular.
    );
  }
}
