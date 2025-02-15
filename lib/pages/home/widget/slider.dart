import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageSlider = [
      "assets/images/slider1.png",
      "assets/images/slider2.png"
    ];
    Size size = MediaQuery.of(context).size;
    final CarouselSliderController controller = CarouselSliderController();
    return CarouselSlider.builder(
      carouselController: controller,
      itemCount: imageSlider.length,
      itemBuilder: (context, index, realIdx) {
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: GestureDetector(
                onTap: (){},
                child: Image.asset(
                  imageSlider[index],
                  width: size.width,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        );
      
      },
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.5,
        scrollDirection: Axis.horizontal,
        enlargeCenterPage: true,
      ),
    );
  }
}
