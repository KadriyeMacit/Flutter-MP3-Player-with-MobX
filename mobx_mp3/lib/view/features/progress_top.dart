import 'package:flutter/material.dart';
import 'package:mobx_mp3/view/widgets/singer_title.dart';
import 'package:mobx_mp3/view/widgets/song_title.dart';

class ProgressTop extends StatelessWidget {
  const ProgressTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SongTitle(),
              SingerTitle(),
            ],
          ),
          const Icon(Icons.favorite_border)
        ],
      ),
    );
  }
}
