import 'package:ecomm_app/widget/CardList.dart';
import 'package:ecomm_app/widget/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey.shade300, Colors.grey.shade200],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 50.h, right: 10.w),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50.h,
                        padding: EdgeInsets.all(1.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                          color: Colors.white,
                        ),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(20.r),
                          shadowColor: Colors.black45,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Search candles",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.w,
                                ),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.w,
                                ),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.camera_alt_outlined),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Icon(Icons.notifications),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(
                      "Deliver to",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                    ),
                    Expanded(
                      child: Text(
                        "3517 W. Gray St. Utica, Pennsylvania",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Carousel(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special Offers",
                      style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See More",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF156651),
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 300.h,
                child: cardlist(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

