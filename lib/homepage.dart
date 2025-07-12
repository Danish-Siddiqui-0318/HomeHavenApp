import 'package:ecomm_app/cart_page.dart';
import 'package:ecomm_app/firstpage.dart';
import 'package:ecomm_app/my_account_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> screens = [Firstpage(), Cart_page(), accountPage()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 130.h,
            decoration: BoxDecoration(
              color: Colors.transparent,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20.r,
                  offset: Offset(0, -5),
                ),
              ],
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r),
              topRight: Radius.circular(30.r),
            ),
            child: Container(
              height: 120.h,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: BottomNavigationBar(
                  onTap: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  currentIndex: currentIndex,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedItemColor: Colors.blueGrey,
                  selectedItemColor: const Color(0xFF156651),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,
                  iconSize: 35.sp,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart_outlined),
                      label: "My Cart",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline),
                      label: "My Account",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
