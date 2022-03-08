import 'package:flutter/material.dart';

class BeforeButton extends StatelessWidget {
  const BeforeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green,
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
    );
  }
}
