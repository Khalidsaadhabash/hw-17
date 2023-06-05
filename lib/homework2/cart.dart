import 'package:flutter/material.dart';

import 'Product.dart';

class Cart extends StatefulWidget {
  Product product;

  Cart(this.product, {super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Product> products = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // add the product to the list
    products.add(widget.product);

    // print(products.length.toString());
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.blueGrey[800])),
          centerTitle: true,
          title: Text(
            "PETLY",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 800,
            padding: const EdgeInsetsDirectional.all(10),
            margin: EdgeInsetsDirectional.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Colors.amber[100],
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return CartItem(products[index], index);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget CartItem(Product product, index) {
    return Container(
      height: 150,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image(
                image: AssetImage("${product.photo}"),
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    products.removeAt(index);
                  });
                },
              ),
              title: Text(
                product.name,
                textScaleFactor: 1.2,
                textAlign: TextAlign.start,
              ),
              subtitle: Text(
                "\$${product.price}",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.amber[500]),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
