import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobx_mp3/features/mp3_player_manager.dart';
import 'package:mobx_mp3/view_model/progress_bar/progress_bar_model.dart';

class CustomProgressBar extends StatelessWidget {
  CustomProgressBar({Key? key}) : super(key: key);

  final ProgressBarModel _progressBarModel = ProgressBarModel();
  final Mp3PlayerManager _mp3playerManager = Mp3PlayerManager();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ProgressBarState>(
      valueListenable: _mp3playerManager.progressNotifier,
      builder: (_, value, __) {
        return ProgressBar(
          progress: value.current,
          buffered: value.buffered,
          total: value.total,
          onSeek: _mp3playerManager.seek,
        );
      },
    );
  }
}

const seekValue = Duration(seconds: 0);
