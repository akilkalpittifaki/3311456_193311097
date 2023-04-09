// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class MyHomePage23 extends StatefulWidget {
  const MyHomePage23({Key? key}) : super(key: key);

  @override
  State<MyHomePage23> createState() => _MyHomePage23State();
}

class _MyHomePage23State extends State<MyHomePage23> {
  // int currentIndex = 0;
  // PageController pageController = PageController();

  List<GalleryExampleItem> galleryItems = <GalleryExampleItem>[
    GalleryExampleItem(
      id: "tag1",
      image: "assets/images/filomini.jpg",
    ),
    GalleryExampleItem(
      id: "tag2",
      image: "assets/images/fuat.jpg",
    ),
    GalleryExampleItem(
      id: "tag3",
      image: "assets/images/pin.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo View"),
      ),

      /// UNCOMMENT THIS IF YOU ONLY WANT TO USE THE PHOTOVIEW
      /// for simple photoview for zooming in & out
      // body: PhotoView(
      //   imageProvider: AssetImage("assets/galaxy.jpeg"), /// or use: NetworkImage()
      //   enableRotation: true,
      // ),

      /// COMMENT THIS IF YOU ONLY WANT TO USE THE PHOTOVIEW
      /// photo_view gallery
      body: PhotoViewGallery.builder(
        scrollPhysics: const BouncingScrollPhysics(),
        builder: (BuildContext context, int index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage(galleryItems[index].image),

            /// or NetworkImage()
            initialScale: PhotoViewComputedScale.contained * 0.8,
            heroAttributes:
                PhotoViewHeroAttributes(tag: galleryItems[index].id),
          );
        },
        itemCount: galleryItems.length,
        loadingBuilder: (context, event) => Center(
          child: Container(
            width: 20.0,
            height: 20.0,
            child: CircularProgressIndicator(
              value: event == null
                  ? 0
                  : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
            ),
          ),
        ),
        // pageController: pageController,
        // onPageChanged: onPageChanged,
      ),
    );
  }

  // void onPageChanged(int index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }
}

class GalleryExampleItem {
  final String id;
  final String image;

  GalleryExampleItem({
    required this.id,
    required this.image,
  });
}
