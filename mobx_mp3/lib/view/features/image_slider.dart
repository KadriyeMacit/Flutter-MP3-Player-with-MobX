import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  ImageSlider({Key? key}) : super(key: key);

  final List<String> imgList = [
    'assets/images/a.jpg',
    'assets/images/b.jpg',
    'assets/images/c.jpg',
    'assets/images/d.jpg',
    'assets/images/e.jpg',
    'assets/images/f.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: CarouselSlider(
        options: CarouselOptions(aspectRatio: 1),
        items: imgList
            .map(
              (item) => ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  item.toString(),
                  fit: BoxFit.fill,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
