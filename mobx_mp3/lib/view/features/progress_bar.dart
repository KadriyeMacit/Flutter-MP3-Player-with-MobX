import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProgressBar(
      progress: const Duration(milliseconds: 1000),
      buffered: const Duration(milliseconds: 2000),
      total: const Duration(milliseconds: 5000),
      thumbColor: Colors.orange,
      progressBarColor: Colors.orangeAccent,
      baseBarColor: Colors.orangeAccent.shade100,
      bufferedBarColor: Colors.orangeAccent,
      onSeek: (duration) {
        //  print('$duration');
      },
    );
  }
}
