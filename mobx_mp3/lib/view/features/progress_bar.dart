import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProgressBar(
      progress: Duration(milliseconds: 1000),
      buffered: Duration(milliseconds: 2000),
      total: Duration(milliseconds: 5000),
      onSeek: (duration) {
        print('User selected a new time: $duration');
      },
    );
  }
}
