import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class settingCart extends StatelessWidget {
  settingCart({super.key, required this.cartIcons, required this.cardTitle});

  final Icon cartIcons;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.r),
      ),
      width: double.infinity,
      height: 70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Row(
              children: [
                Icon(cartIcons.icon, size: 24.sp, color: cartIcons.color),
                SizedBox(width: 25.w),
                Text(
                  cardTitle,
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25.w),
            child: Icon(Icons.arrow_forward_ios_outlined, size: 18.sp),
          ),
        ],
      ),
    );
  }
}
