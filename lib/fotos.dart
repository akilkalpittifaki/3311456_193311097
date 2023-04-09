import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MyHomePage30 extends StatefulWidget {
  const MyHomePage30({Key? key}) : super(key: key);

  @override
  State<MyHomePage30> createState() => _MyHomePage30State();
}

class _MyHomePage30State extends State<MyHomePage30> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo View"),
      ),

      /// for simple photoview for zooming in & out
      body: PhotoView(
        imageProvider: const AssetImage("assets/images/pin.jpg"),

        /// or use: NetworkImage()
        enableRotation: true,
      ),
    );
  }
}
