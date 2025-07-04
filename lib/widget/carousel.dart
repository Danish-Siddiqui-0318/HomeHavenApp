import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int activeIndex = 0;

  final List<String> imgPath = [
    "https://i.ibb.co/DfkVxzSW/Chat-GPT-Image-Jun-29-2025-02-01-57-AM.png",
    "https://i.ibb.co/ZR38mpXZ/image-16.png",
    "https://i.ibb.co/pBshB0jY/Chat-GPT-Image-Jun-29-2025-01-55-10-AM.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 250,
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          items: imgPath.map((item) {
            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.ibb.co/q34Q0X8K/Overlay-1.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 30, left: 30, right: 140),
                        child: Text(
                          "Celebrate The \nSeason With Us!",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 30),
                        child: Text(
                          "Get discounts up to 75% for\nfurniture &  decoration",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 25),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Color(0xFF156651),
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          child: Text("Shop Now"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
        SizedBox(height: 10),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: imgPath.length,
          effect: ExpandingDotsEffect(
            activeDotColor: Color(0xFF156651),
            dotColor: Colors.grey.shade400,
            dotHeight: 8,
            dotWidth: 8,
            spacing: 6,
          ),
        ),
      ],
    );
  }
}