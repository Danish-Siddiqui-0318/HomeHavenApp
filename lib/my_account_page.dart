import 'package:ecomm_app/widget/settingcart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class accountPage extends StatelessWidget {
  accountPage({super.key});

  List<Icon> cartButton = [
    Icon(Icons.newspaper_outlined),
    Icon(Icons.favorite_border_outlined),
    Icon(Icons.bookmark_border),
    Icon(Icons.credit_card),
    Icon(Icons.notifications_none_outlined),
    Icon(Icons.lock_outline),
  ];

  List<String> cardtitle = [
    "Transaction",
    "Wishlist",
    "Saved Address",
    "Payment Methods",
    "Notification",
    "Security",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 180.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://i.ibb.co/4Z6d3vCQ/Profile-BG.png",
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 180.h,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 70.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                        size: 24.sp,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -50.h,
                  left: 20.w,
                  right: 20.w,
                  child: Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.r,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/VcvFcL79/Ellipse-75.png",
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Claire Cooper",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                            Text(
                              "claire.cooper@mail.com",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit_outlined,
                          color: Colors.grey[800],
                          size: 20.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 5.h, bottom: 5.h),
              child: Text("General", style: TextStyle(fontSize: 20.sp)),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: cartButton.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: index == 0 ? 5.h : 10.h,
                    left: 15.w,
                    right: 15.w,
                    bottom: 10.h,
                  ),
                  child: settingCart(
                    cartIcons: cartButton[index],
                    cardTitle: cardtitle[index],
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 10.h, bottom: 5.h),
              child: Text("Help", style: TextStyle(fontSize: 20.sp)),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 15.w, right: 15.w),
              child: settingCart(
                cartIcons: Icon(Icons.person_outline),
                cardTitle: "Get in Touch With Us",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
