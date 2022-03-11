import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  ImageSlider({Key? key}) : super(key: key);

  final List<String> imgList = [
    // 'assets/images/a.jpg',
    'assets/images/b.jpg',
    // 'assets/images/c.jpg',
    // 'assets/images/d.jpg',
    'assets/images/e.png',
    // 'assets/images/f.jpg',
    'assets/images/g.jpg',
    'assets/images/h.jpg',
    'assets/images/i.png',
    'assets/images/j.jpg',
    'assets/images/k.jpeg',
    // 'assets/images/l.jpg',
    'assets/images/m.jpg',
    'assets/images/n.jpg',
    'assets/images/o.jpg',
    'assets/images/p.png',
    'assets/images/r.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 50,
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
