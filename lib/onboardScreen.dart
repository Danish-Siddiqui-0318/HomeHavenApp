import 'package:ecomm_app/login.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          width: 1.sw,
          height: 0.55.sh,
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
            color: const Color(0xFFFEF7FF),
            height: 0.45.sh,
            width: 1.sw,
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Text("Online Home Store", style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold)),
                Text("and Furniture", style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold)),
                SizedBox(height: 10.h),
                Text("Discover all style and budgets of .", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300)),
                Text("furniture, appliances, kitchen, and more.", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300)),
                Text("from 500+ brands in your hand.", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300)),
                SizedBox(height: 25.h),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(dotHeight: 10.h, dotWidth: 10.w, activeDotColor: const Color(0xFF156651)),
                ),
                SizedBox(height: 25.h),
                GestureDetector(
                  onTap: () {
                    controller.nextPage(duration: const Duration(milliseconds: 1000), curve: Curves.easeInOutCubic);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    padding: EdgeInsets.only(top: 5.h),
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFF156651),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 20.sp)),
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
          width: 1.sw,
          height: 0.55.sh,
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
            color: const Color(0xFFFEF7FF),
            height: 0.45.sh,
            width: 1.sw,
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Text("Delivery Right to Your ", style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold)),
                Text("Doorstep", style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold)),
                SizedBox(height: 10.h),
                Text("Sit back, and enjoy the convenience of ", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300)),
                Text("our drivers delivering your order to your ", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300)),
                Text("doorstep.", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300)),
                SizedBox(height: 25.h),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(dotHeight: 10.h, dotWidth: 10.w, activeDotColor: const Color(0xFF156651)),
                ),
                SizedBox(height: 25.h),
                Row(
                  children: [
                    SizedBox(width: 15.w),
                    GestureDetector(
                      onTap: () {
                        controller.previousPage(duration: const Duration(milliseconds: 1000), curve: Curves.easeInOutCubic);
                      },
                      child: Container(
                        width: 100.w,
                        height: 50.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFEF7FF),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text("Back", style: TextStyle(color: const Color(0xFF156651), fontSize: 20.sp)),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    GestureDetector(
                      onTap: () {
                        controller.nextPage(duration: const Duration(milliseconds: 1000), curve: Curves.easeInOutCubic);
                      },
                      child: Container(
                        width: 250.w,
                        height: 50.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF156651),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 20.sp)),
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
          width: 1.sw,
          height: 0.55.sh,
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
            color: const Color(0xFFFEF7FF),
            height: 0.45.sh,
            width: 1.sw,
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Text("Get Support From Our", style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold)),
                Text("Skilled Team", style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold)),
                SizedBox(height: 10.h),
                Text("If our products don't meet your ", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300)),
                Text("expectations, we're available 24/7 to ", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300)),
                Text("assist you.", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300)),
                SizedBox(height: 25.h),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(dotHeight: 10.h, dotWidth: 10.w, activeDotColor: const Color(0xFF156651)),
                ),
                SizedBox(height: 25.h),
                Row(
                  children: [
                    SizedBox(width: 15.w),
                    GestureDetector(
                      onTap: () {
                        controller.previousPage(duration: const Duration(milliseconds: 1000), curve: Curves.easeInOutCubic);
                      },
                      child: Container(
                        width: 100.w,
                        height: 50.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFEF7FF),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text("Back", style: TextStyle(color: const Color(0xFF156651), fontSize: 20.sp)),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => loginPage()));
                      },
                      child: Container(
                        width: 250.w,
                        height: 50.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF156651),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 20.sp)),
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
