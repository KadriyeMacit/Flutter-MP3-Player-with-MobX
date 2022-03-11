import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Icon(
          Icons.play_arrow,
          //Icons.pause,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
