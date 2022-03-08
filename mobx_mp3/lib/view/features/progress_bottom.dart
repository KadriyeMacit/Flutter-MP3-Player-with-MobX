import 'package:flutter/material.dart';
import 'package:mobx_mp3/view/buttons/before_button.dart';
import 'package:mobx_mp3/view/buttons/next_button.dart';
import 'package:mobx_mp3/view/buttons/play_button.dart';

class ProgressBottom extends StatelessWidget {
  const ProgressBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        BeforeButton(),
        SizedBox(
          width: 10,
        ),
        PlayButton(),
        SizedBox(
          width: 10,
        ),
        NextButton(),
      ],
    );
  }
}
