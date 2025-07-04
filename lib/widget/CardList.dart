import 'package:flutter/material.dart';

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

  // "https://i.ibb.co/5XT1Fk2p/Image.png",
  // "https://i.ibb.co/1Y2y9L5W/Image-1.png",
  // "https://i.ibb.co/XZKnJdQR/Image-3.png",
  // "https://i.ibb.co/PvM5wBb3/Image-5.png"
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => ProductCard(
        name: cardProducts[index]['name'],
        imgPath: cardProducts[index]['imgpath'],
        price: cardProducts[index]['price'],
        discountedPrice: cardProducts[index]['discounted_price'],
      ),
      itemCount: cardProducts.length,
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
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Card(
        child: Container(
          height: 300,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imgPath!),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    name!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "\$"+price!,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "\$"+discountedPrice!,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        "\$4.9 (256)",
                        style: TextStyle(
                          fontSize: 14,
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
