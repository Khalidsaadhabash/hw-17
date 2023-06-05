import 'package:flutter/material.dart';

import 'Product.dart';
import 'cart.dart';

class ProductDetails extends StatelessWidget {
  Product product;

  ProductDetails(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.blueGrey[800])),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.blueGrey[800])),
          ],
          centerTitle: true,
          title: const Text(
            "PETLY",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // image :
            Image(image: AssetImage(product.photo)),
            const SizedBox(
              height: 10,
            ),

            // taps:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(left: Radius.circular(12)),
                    color: Colors.orangeAccent[200],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Product",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.horizontal(left: Radius.circular(22)),
                      color: Colors.orangeAccent[100],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Details",
                        style: TextStyle(fontSize: 22),
                      ),
                    )),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(right: Radius.circular(12)),
                      color: Colors.orangeAccent[100],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Reviews",
                        style: TextStyle(fontSize: 22),
                      ),
                    )),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            // information:

            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${product.name}",
                        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "\$${product.price}",
                        style: TextStyle(fontSize: 22, color: Colors.amber[500], fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Description:",
                        style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${product.desc}:",
                        style: const TextStyle(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Rating:",
                        style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,

                    child: Container(
                      margin: const EdgeInsets.only(top: 2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 15.0,
                            color: Colors.yellow[400],
                          ),
                          Icon(
                            Icons.star,
                            size: 15.0,
                            color: Colors.yellow[400],
                          ),
                          Icon(
                            Icons.star,
                            size: 15.0,
                            color: Colors.yellow[400],
                          ),
                          Icon(
                            Icons.star,
                            size: 15.0,
                            color: Colors.yellow[400],
                          ),
                          Icon(
                            Icons.star_half,
                            size: 15.0,
                            color: Colors.yellow[400],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("${product.rating}")
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),


            // bottom:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cart(product),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: Colors.orangeAccent[100],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    color: Colors.orangeAccent[200],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Buy Now",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 40,
            ),

          ],

        ),
      ),
    );
  }

// Widget imageView() {
//
// }
// Widget tapView(){
//
// }
// Widget InfoView(){
//
// }
}
