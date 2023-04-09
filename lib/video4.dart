import 'package:flutter/material.dart';
import 'package:quiz3/hakkinda.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class Video4 extends Hakkinda {
  const Video4({super.key});

  // const Video({super.key}); //sonradan

  @override
  State<Video4> createState() => _Video4State();
}

class _Video4State extends State<Video4> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController = VideoPlayerController.asset('videos/aristo.mp4');
    //await videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      additionalOptions: (context) {
        return <OptionItem>[
          OptionItem(
            onTap: () => debugPrint('Option 1 pressed!'),
            iconData: Icons.chat,
            title: 'Option 1',
          ),
          OptionItem(
            onTap: () => debugPrint('Option 2 pressed!'),
            iconData: Icons.share,
            title: 'Option 2',
          ),
        ];
      },
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aristo İyi Yaşam Video"),
      ),
      body: chewieController != null
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Chewie(
                controller: chewieController!,
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
