import 'package:flutter/material.dart';

class HomeCategoriesListWidgets extends StatelessWidget {
  const HomeCategoriesListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> categoriesImageData = [
      "assets/images/ca1.png",
      "assets/images/ca2.png",
      "assets/images/ca3.png",
      "assets/images/ca4.png",
      "assets/images/5.png"
    ];

    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 18),
      width: size.width,
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 15),
        itemCount: categoriesImageData.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 20),
            child: Image.asset(
              categoriesImageData[index],
            ),
          );
        },
      ),
    );
  }
}
