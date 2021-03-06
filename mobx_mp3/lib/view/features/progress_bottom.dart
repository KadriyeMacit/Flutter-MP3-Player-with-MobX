import 'package:flutter/material.dart';
import 'package:mobx_mp3/view/buttons/previous_button.dart';
import 'package:mobx_mp3/view/buttons/next_button.dart';
import 'package:mobx_mp3/view/buttons/play_button.dart';

class ProgressBottom extends StatelessWidget {
  const ProgressBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PreviousButton(),
        const SizedBox(
          width: 10,
        ),
        PlayButton(),
        const SizedBox(
          width: 10,
        ),
        NextButton(),
      ],
    );
  }
}
