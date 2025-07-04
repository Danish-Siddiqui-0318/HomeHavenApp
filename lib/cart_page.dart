import 'package:flutter/material.dart';

class Cart_page extends StatelessWidget {
  const Cart_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        title: Text(
          "My Cart",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: [Icon(Icons.notifications_none_outlined)],
      ),
      body: SingleCart(),
    );
  }
}

class SingleCart extends StatelessWidget {
  const SingleCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Container(
        height: 200,
        width: 370,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image(
                image: NetworkImage("https://i.ibb.co/Wvs47YTq/image-4.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("EKERO"),
                  Text("\$230.00"),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("\$512"),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        margin: EdgeInsets.only(left: 5),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text(
                            "45% OFF",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("Yellow", style: TextStyle(color: Colors.grey)),
                  Row(children: [
                    Icon(Icons.heart_broken_outlined),
                    
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
