import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kia_watchstore/Resources/dimens.dart';

List<String> sliderImages = [
  "assets/images/PNG/Homepage Poster.png",
  "assets/images/PNG/HomePage Poster 2.png",
  "assets/images/PNG/ProfilePage Poster.png",
];

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  final CarouselSliderController _controller = CarouselSliderController();
  final List<Widget> sliderItems = sliderImages.map((e) {
    return Padding(
      padding: EdgeInsetsGeometry.all(MyDimens.medium),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(MyDimens.medium),
        child: Image.asset(e, fit: BoxFit.cover),
      ),
    );
  }).toList();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 250,
      width: size.width/0.7,
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _controller,
            items: sliderItems,
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: sliderImages.asMap().entries.map((e) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: GestureDetector(
                  onTap: () {
                    _controller.animateToPage(e.key);
                  },
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black45),
                      color: currentIndex == e.key ? Colors.grey : Colors.white,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
