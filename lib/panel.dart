import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage9(),
    );
  }
}

class MyHomePage9 extends StatefulWidget {
  const MyHomePage9({Key? key}) : super(key: key);

  @override
  State<MyHomePage9> createState() => _MyHomePage9State();
}

class _MyHomePage9State extends State<MyHomePage9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("??????????"),
      ),
      body: SlidingUpPanel(
        backdropEnabled: true, //darken background if panel is open
        color: Colors
            .transparent, //necessary if you have rounded corners for panel
        /// panel itself
        panel: Container(
          decoration: const BoxDecoration(
            // background color of panel
            color: Colors.redAccent,
            // rounded corners of panel
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              BarIndicator(),
              Center(
                child: Text(
                  "\n Ben yalancıyım diyen doğru mu söylüyor yalan mı???",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),

        /// header of panel while collapsed
        collapsed: Container(
          decoration: const BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
          ),
          child: Column(
            children: const [
              BarIndicator(),
              Center(
                child: Text(
                  "Soru",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),

        /// widget behind panel
        body: Center(
            child: Column(children: [
          Image.asset("assets/images/pin.jpg"),
          const Text(
            "Soru Aşağıdaki panelde :)",
            style: TextStyle(fontSize: 18),
          ),
        ])

            // child: Text(  "Ben yalancıyım diyen doğru mu söylüyor yoksa yalan mı?",   ),
            ),
      ),
    );
  }
}

class BarIndicator extends StatelessWidget {
  const BarIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        width: 40,
        height: 3,
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
