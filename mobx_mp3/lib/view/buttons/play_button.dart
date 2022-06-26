import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_mp3/features/mp3_player_manager.dart';
import 'package:mobx_mp3/view_model/play_button/play_button_model.dart';

class PlayButton extends StatelessWidget {
  PlayButton({Key? key}) : super(key: key);

  final PlayButtonModel _viewModel = PlayButtonModel();
  final Mp3PlayerManager _mp3playerManager = Mp3PlayerManager();

  @override
  Widget build(BuildContext context) {
    return

        // InkWell(
        //   onTap: () => _viewModel.onPlayPressed(),
        //   child: Observer(
        //     builder: (_) {
        //       return Container(
        //         decoration: const BoxDecoration(
        //           color: Colors.orange,
        //           shape: BoxShape.circle,
        //         ),
        //         child: Padding(
        //           padding: const EdgeInsets.all(20.0),
        //           child: Icon(
        //             _viewModel.isPlayTrue ? Icons.play_arrow : Icons.pause,
        //             size: 40,
        //             color: Colors.white,
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // );

        ValueListenableBuilder<ButtonState>(
      valueListenable: _mp3playerManager.buttonNotifier,
      builder: (_, value, __) {
        switch (value) {
          case ButtonState.loading:
            return Container(
              margin: const EdgeInsets.all(8.0),
              width: 32.0,
              height: 32.0,
              child: const CircularProgressIndicator(),
            );
          case ButtonState.paused:
            return IconButton(
              icon: const Icon(Icons.play_arrow),
              iconSize: 32.0,
              onPressed: _mp3playerManager.play,
            );
          case ButtonState.playing:
            return IconButton(
              icon: const Icon(Icons.pause),
              iconSize: 32.0,
              onPressed: _mp3playerManager.pause,
            );
        }
      },
    );
  }
}
