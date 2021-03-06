import 'package:flutter/material.dart';
import 'package:mobx_mp3/view_model/next_button/next_button_model.dart';

class NextButton extends StatelessWidget {
  NextButton({Key? key}) : super(key: key);

  final NextButtonModel _nextButtonModel = NextButtonModel();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _nextButtonModel.onNextPressed(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.circle,
        ),
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(
            Icons.skip_next,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
