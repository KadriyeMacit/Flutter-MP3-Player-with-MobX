import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_mp3/view_model/play_button/play_button_model.dart';

class PlayButton extends StatelessWidget {
  PlayButton({Key? key}) : super(key: key);

  final _viewModel = PlayButtonModel();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _viewModel.onPlayPressed(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Observer(
            builder: (_) {
              return Icon(
                _viewModel.isPlayTrue ? Icons.play_arrow : Icons.pause,
                size: 40,
                color: Colors.white,
              );
            },
          ),
        ),
      ),
    );
  }
}
