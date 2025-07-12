import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart_page extends StatelessWidget {
  Cart_page({super.key});

  final List<Map<String, String>> cartProducts = [
    {
      'name': "EKERO",
      'imgpath': "https://i.ibb.co/5XT1Fk2p/Image.png",
      'price': "230",
      'color': 'yellow',
      'discounted_price': '12.58',
      'dicount_percent': '45%',
    },
    {
      'name': "PLATTLÄNS",
      'imgpath': "https://i.ibb.co/1Y2y9L5W/Image-1.png",
      'price': "24.990",
      'color': 'grey',
      'discounted_price': '69.99',
      'dicount_percent': '45%',
    },
    {
      'name': "STRANDMON",
      'imgpath': "https://i.ibb.co/XZKnJdQR/Image-3.png",
      'price': "274.13",
      'color': 'yellow',
      'discounted_price': '856.60',
      'dicount_percent': '45%',
    },
    {
      'name': "EKERÖ",
      'imgpath': "https://i.ibb.co/PvM5wBb3/Image-5.png",
      'price': "230.00",
      'color': 'yellow',
      'discounted_price': '512.58',
      'dicount_percent': '45%',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        automaticallyImplyLeading: false,
        title: Text(
          "My Cart",
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(Icons.notifications_none_outlined, size: 26.sp),
          SizedBox(width: 10.w),
        ],
      ),
      body: ListView.builder(
        itemCount: cartProducts.length,
        itemBuilder: (context, index) => SingleCart(
          name: cartProducts[index]['name'],
          imgpath: cartProducts[index]['imgpath'],
          price: cartProducts[index]['price'],
          color: cartProducts[index]['color'],
          discounted_price: cartProducts[index]['discounted_price'],
          discount_percent: cartProducts[index]['dicount_percent'],
        ),
      ),
    );
  }
}

class SingleCart extends StatefulWidget {
  SingleCart({
    super.key,
    required this.name,
    required this.imgpath,
    required this.price,
    required this.color,
    required this.discounted_price,
    required this.discount_percent,
  });

  String? name;
  String? imgpath;
  String? price;
  String? color;
  String? discounted_price;
  String? discount_percent;

  @override
  State<SingleCart> createState() => _SingleCartState();
}

class _SingleCartState extends State<SingleCart> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Container(
        height: 200.h,
        width: 370.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Image.network(
                widget.imgpath!,
                width: 100.w,
                height: 100.h,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name!,
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "\$,${widget.price}",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "\$,${widget.discounted_price}",
                        style: TextStyle(
                          fontSize: 14.sp,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            bottomRight: Radius.circular(10.r),
                          ),
                        ),
                        child: Text(
                          "${widget.discount_percent} OFF",
                          style: TextStyle(color: Colors.white, fontSize: 12.sp),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    widget.color!,
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                  SizedBox(
                    width: 200.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.grey,
                          size: 20.sp,
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(
                                color: Colors.grey.shade200,
                                width: 2.w,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      count++;
                                    });
                                  },
                                  child: Icon(Icons.add, color: Color(0xFF156651), size: 18.sp),
                                ),
                                Text('$count', style: TextStyle(fontSize: 16.sp)),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (count > 1) count--;
                                    });
                                  },
                                  child: Icon(Icons.remove, color: Color(0xFF156651), size: 18.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
