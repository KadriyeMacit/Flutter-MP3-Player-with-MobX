import 'package:flutter/material.dart';
import 'package:mobx_mp3/view/features/image_slider.dart';
import 'package:mobx_mp3/view/features/progress_bar.dart';
import 'package:mobx_mp3/view/features/progress_bottom.dart';
import 'package:mobx_mp3/view/features/progress_top.dart';
import 'package:mobx_mp3/view/widgets/title_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange.shade50,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const TitleText(),
                    ImageSlider(),
                    const ProgressTop(),
                    const CustomProgressBar(),
                    const ProgressBottom(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
