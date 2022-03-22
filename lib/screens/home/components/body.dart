import 'package:flutter/material.dart';
import 'package:parcial2_flutter/constants.dart';
import 'package:parcial2_flutter/models/Producto.dart';
import 'package:parcial2_flutter/screens/detalles/detalles_screen.dart';
import 'package:parcial2_flutter/screens/home/components/categorias.dart';
import 'package:parcial2_flutter/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Comercial SIVAR",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.normal),
          ),
        ),
        //TextBox con (Icons.search, color: Colors.black)
        SizedBox(
          height: 10,
        ),
        Categorias(), //Dentro de este metodo va el Icono Heart
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    // builder: (context) => DetailScreen(todo: todos[index]),
                    builder: (context) =>
                        DetalleScreen(product: products[index]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
