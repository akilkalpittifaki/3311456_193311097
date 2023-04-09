// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz3/panel.dart';

class MyHomePage18 extends StatefulWidget {
  const MyHomePage18({Key? key}) : super(key: key);

  @override
  State<MyHomePage18> createState() => _MyHomePage18State();
}

class _MyHomePage18State extends State<MyHomePage18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bas gaza"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.8,
              center: Text(
                "80.0%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              // footer: Text("Sales this week", style: TextStyle(fontSize: 14),),
              circularStrokeCap: CircularStrokeCap.square,
              progressColor: Colors.redAccent,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.90,
                center: Text("90.0%"),
                // linearStrokeCap: LinearStrokeCap.roundAll,
                barRadius: Radius.circular(15),
                progressColor: Colors.redAccent,
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
                            builder: (context) => const MyHomePage9()));
                  },
                  child: const Text('Bir Soru')),
            ),
          ],
        ),
      ),
    );
  }
}
