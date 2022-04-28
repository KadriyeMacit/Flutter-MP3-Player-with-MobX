import 'package:flutter/material.dart';
import 'package:mobx_mp3/view_model/previous_button/previous_button_model.dart';

class PreviousButton extends StatelessWidget {
  PreviousButton({Key? key}) : super(key: key);

  final PreviousButtonModel _previousButtonModel = PreviousButtonModel();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _previousButtonModel.onPreviousPressed(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.circle,
        ),
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(
            Icons.skip_previous,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
