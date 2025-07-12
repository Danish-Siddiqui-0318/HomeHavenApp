import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class cardlist extends StatelessWidget {
  cardlist({super.key});

  final List<Map<String, String>> cardProducts = [
    {
      'name': "EKERO",
      'imgpath': "https://i.ibb.co/5XT1Fk2p/Image.png",
      'price': "230",
      'discounted_price': '12.58',
    },
    {
      'name': "PLATTLÄNS",
      'imgpath': "https://i.ibb.co/1Y2y9L5W/Image-1.png",
      'price': "24.990",
      'discounted_price': '69.99',
    },
    {
      'name': "STRANDMON",
      'imgpath': "https://i.ibb.co/XZKnJdQR/Image-3.png",
      'price': "274.13",
      'discounted_price': '856.60',
    },
    {
      'name': "EKERÖ",
      'imgpath': "https://i.ibb.co/PvM5wBb3/Image-5.png",
      'price': "230.00",
      'discounted_price': '512.58',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: cardProducts.length,
      itemBuilder: (context, index) => ProductCard(
        name: cardProducts[index]['name'],
        imgPath: cardProducts[index]['imgpath'],
        price: cardProducts[index]['price'],
        discountedPrice: cardProducts[index]['discounted_price'],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String? name;
  final String? imgPath;
  final String? price;
  final String? discountedPrice;

  const ProductCard({
    super.key,
    required this.name,
    required this.imgPath,
    required this.price,
    required this.discountedPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Card(
        child: Container(
          height: 300.h,
          width: 180.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Container(
                  width: 150.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imgPath!),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, top: 20.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    name!,
                    style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "\$" + price!,
                    style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "\$" + discountedPrice!,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18.sp),
                      SizedBox(width: 4.w),
                      Text(
                        "\$4.9 (256)",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
