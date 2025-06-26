import 'package:ecomm_app/login.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          Page1(controller: _controller),
          Page2(controller: _controller),
          Page3(controller: _controller),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  final PageController controller;

  const Page1({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://i.ibb.co/RpzxLXQ1/rounded1.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            alignment: Alignment.center,
            color: Color(0xFFFEF7FF),
            height: 410,
            width: 425,
            child: Column(
              children: [
                Text(
                  "Online Home Store",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "and Furniture",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Discover all style and budgets of .",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Text(
                  "furniture, appliances, kitchen, and more.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Text(
                  "from 500+ brands in your hand.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 25),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Color(0xFF156651),
                  ),
                ),
                SizedBox(height: 25),
                GestureDetector(
                  onTap: () {
                    controller.nextPage(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubic,
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 25, 0),
                    padding: EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    width: double.infinity,
                    // color: Colors.green.shade900,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF156651),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  final PageController controller;

  const Page2({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://i.ibb.co/HLXQLr81/Mask-group.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            alignment: Alignment.center,
            color: Color(0xFFFEF7FF),
            height: 400,
            width: 425,
            child: Column(
              children: [
                Text(
                  "Delivery Right to Your ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Doorstep",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sit back, and enjoy the convenience of ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Text(
                  "our drivers delivering your order to your ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Text(
                  "doorstep.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 25),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Color(0xFF156651),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.previousPage(
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubic,
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 20, 0),
                        padding: EdgeInsets.only(top: 5),
                        alignment: Alignment.center,
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFFEF7FF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Back",
                          style: TextStyle(
                            color: Color(0xFF156651),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.nextPage(
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubic,
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 25, 0),
                        padding: EdgeInsets.only(top: 5),
                        alignment: Alignment.center,
                        width: 250,
                        // color: Colors.green.shade900,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF156651),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Page3 extends StatelessWidget {
  final PageController controller;

  const Page3({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://i.ibb.co/xSycx7hX/rounded3.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            alignment: Alignment.center,
            color: Color(0xFFFEF7FF),
            height: 400,
            width: 425,
            child: Column(
              children: [
                Text(
                  "Get Support From Our",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Skilled Team",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "If our products don't meet your ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Text(
                  "expectations, we're available 24/7 to ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Text(
                  "assist you.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 25),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Color(0xFF156651),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.previousPage(
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubic,
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 20, 0),
                        padding: EdgeInsets.only(top: 5),
                        alignment: Alignment.center,
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFFEF7FF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Back",
                          style: TextStyle(
                            color: Color(0xFF156651),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => loginPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 25, 0),
                        padding: EdgeInsets.only(top: 5),
                        alignment: Alignment.center,
                        width: 250,
                        // color: Colors.green.shade900,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF156651),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
