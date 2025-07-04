import 'package:ecomm_app/widget/CardList.dart';
import 'package:ecomm_app/widget/carousel.dart';
import 'package:flutter/material.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 50, right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(20),
                        shadowColor: Colors.black45,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Search candles",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(
                                50,
                              ), // Circular border
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(
                                50,
                              ), // Circular border
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
                  Icon(Icons.notifications),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.location_on_outlined),
                  Text(
                    "Deliver to",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "3517 W. Gray St. Utica, Pennsylvania",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.keyboard_arrow_down_sharp),
                ],
              ),
            ),
            SizedBox(height: 20),
            Carousel(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special Offers",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See More",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF156651),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: 300,
                child: cardlist()),
          ],
        ),
      ),
    );
  }
}
