import 'package:flutter/material.dart';
import 'package:parcial2_flutter/constants.dart';
import 'package:parcial2_flutter/models/Producto.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  const ItemCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              width: 180,
              height: 180,
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 228, 228),
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$24.99",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
