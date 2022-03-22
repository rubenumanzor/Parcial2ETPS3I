import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parcial2_flutter/models/Producto.dart';
import 'package:parcial2_flutter/screens/home/components/body.dart';

class DetalleScreen extends StatelessWidget {
  final Product product;

  const DetalleScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var valor = 0;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 206, 206),
      appBar: barDetalle(),
      body: DetalleProducto(),
    );
  }

  AppBar barDetalle() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ))
      ],
    );
  }

  Widget DetalleProducto() {
    return Column(
      children: [
        Container(
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 220,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(product.image),
                            fit: BoxFit.contain)),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            //padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Column(children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      product.title,
                      style: TextStyle(fontSize: 15),
                    ),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      Text(
                        "200 Reviews",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Text(product.description),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text("Color")
                    ],
                  ),
                  //Colores
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {
                            //El compañero uso StatelessWidget y me di cuenta tarde :'(
                          },
                          icon: Icon(
                            Icons.circle,
                            color: Colors.green,
                          )),
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.circle, color: Colors.orange)),
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.circle, color: Colors.red)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Respond to button press
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 167, 136, 124)),
                        icon: Icon(Icons.shop_two_outlined, size: 18),
                        label: Text("Comprar"),
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ),
        )
      ],
    );
  }
}
