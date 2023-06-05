import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Product.dart';
import 'ProductDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
      // statusBarIconBrightness: Brightness.dark,
      // statusBarBrightness: Brightness.dark
    ));

    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // data list
  List<Product> products = [
    Product(
        name: "Cappperthno",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pulvinar vehicula enim a feugiat. Maecenas vestibulum commodo est sed dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus tincidunt varius enim, vitae tincidunt diam faucibus vitae. Curabitur orci lorem, sodales nec mattis non, sollicitudin sit amet justo. Fusce vulputate massa vitae neque varius fringilla. Aenean ornare laoreet nisl, eget vestibulum diam convallis id. Etiam elementum ex magna, ac cursus enim placerat sit amet. Ut convallis erat vestibulum, condimentum purus a, iaculis risus",
        price: "199.00",
        photo: "assets/images/cap.jpg",
        rating: 10.0),
    Product(
        name: "Americano",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pulvinar vehicula enim a feugiat. Maecenas vestibulum commodo est sed dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus tincidunt varius enim, vitae tincidunt diam faucibus vitae. Curabitur orci lorem, sodales nec mattis non, sollicitudin sit amet justo. Fusce vulputate massa vitae neque varius fringilla. Aenean ornare laoreet nisl, eget vestibulum diam convallis id. Etiam elementum ex magna, ac cursus enim placerat sit amet. Ut convallis erat vestibulum, condimentum purus a, iaculis risus",
        price: "199.00",
        photo: "assets/images/americano.jpg",
        rating: 10.0),
    Product(
        name: "Latte",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pulvinar vehicula enim a feugiat. Maecenas vestibulum commodo est sed dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus tincidunt varius enim, vitae tincidunt diam faucibus vitae. Curabitur orci lorem, sodales nec mattis non, sollicitudin sit amet justo. Fusce vulputate massa vitae neque varius fringilla. Aenean ornare laoreet nisl, eget vestibulum diam convallis id. Etiam elementum ex magna, ac cursus enim placerat sit amet. Ut convallis erat vestibulum, condimentum purus a, iaculis risus",
        price: "199.00",
        photo: "assets/images/latte.jpg",
        rating: 10.0),
    Product(
        name: "Flat white",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pulvinar vehicula enim a feugiat. Maecenas vestibulum commodo est sed dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus tincidunt varius enim, vitae tincidunt diam faucibus vitae. Curabitur orci lorem, sodales nec mattis non, sollicitudin sit amet justo. Fusce vulputate massa vitae neque varius fringilla. Aenean ornare laoreet nisl, eget vestibulum diam convallis id. Etiam elementum ex magna, ac cursus enim placerat sit amet. Ut convallis erat vestibulum, condimentum purus a, iaculis risus",
        price: "199.00",
        photo: "assets/images/flatwhite.jpg",
        rating: 10.0),
    Product(
        name: "Cortado",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pulvinar vehicula enim a feugiat. Maecenas vestibulum commodo est sed dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus tincidunt varius enim, vitae tincidunt diam faucibus vitae. Curabitur orci lorem, sodales nec mattis non, sollicitudin sit amet justo. Fusce vulputate massa vitae neque varius fringilla. Aenean ornare laoreet nisl, eget vestibulum diam convallis id. Etiam elementum ex magna, ac cursus enim placerat sit amet. Ut convallis erat vestibulum, condimentum purus a, iaculis risus",
        price: "199.00",
        photo: "assets/images/cortado.jpg",
        rating: 10.0),
    Product(
        name: "Espresso",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pulvinar vehicula enim a feugiat. Maecenas vestibulum commodo est sed dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus tincidunt varius enim, vitae tincidunt diam faucibus vitae. Curabitur orci lorem, sodales nec mattis non, sollicitudin sit amet justo. Fusce vulputate massa vitae neque varius fringilla. Aenean ornare laoreet nisl, eget vestibulum diam convallis id. Etiam elementum ex magna, ac cursus enim placerat sit amet. Ut convallis erat vestibulum, condimentum purus a, iaculis risus",
        price: "199.00",
        photo: "assets/images/expresso.jpg",
        rating: 10.0),
    Product(
        name: "Caffè mocha",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pulvinar vehicula enim a feugiat. Maecenas vestibulum commodo est sed dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus tincidunt varius enim, vitae tincidunt diam faucibus vitae. Curabitur orci lorem, sodales nec mattis non, sollicitudin sit amet justo. Fusce vulputate massa vitae neque varius fringilla. Aenean ornare laoreet nisl, eget vestibulum diam convallis id. Etiam elementum ex magna, ac cursus enim placerat sit amet. Ut convallis erat vestibulum, condimentum purus a, iaculis risus",
        price: "199.00",
        photo: "assets/images/au.jpg",
        rating: 10.0),
    Product(
        name: "Caffè macchiato",
        desc:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pulvinar vehicula enim a feugiat. Maecenas vestibulum commodo est sed dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus tincidunt varius enim, vitae tincidunt diam faucibus vitae. Curabitur orci lorem, sodales nec mattis non, sollicitudin sit amet justo. Fusce vulputate massa vitae neque varius fringilla. Aenean ornare laoreet nisl, eget vestibulum diam convallis id. Etiam elementum ex magna, ac cursus enim placerat sit amet. Ut convallis erat vestibulum, condimentum purus a, iaculis risus",
        price: "199.00",
        photo: "assets/images/macchiato.jpg",
        rating: 10.0),
  ];

  @override
  Widget build(BuildContext context) {
    var screenH = MediaQuery.of(context).size.height - 10;

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.margin, color: Colors.blueGrey[800])),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.blueGrey[800])),
          ],
          centerTitle: true,
          title: Text(
            "PETLY",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: Colors.white),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 10,
            child: Column(
              children: [
                Container(
                  height: 40,
                ),
                Expanded(
                  child: Container(

                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Text(
                          "Choose Bread",
                          style: const TextStyle(color: Colors.brown, fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                        Container(
                          height: 20,
                        ),
                        Container(
                          height: 120,
                          child: ListView.builder(
                            itemCount: products.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Item2(products, index);
                            },
                          ),
                        ),
                        Container(
                          height: 30,
                        ),
                        Text(
                          "Choose Products",
                          style: const TextStyle(color: Colors.brown, fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                        Container(
                          height: 20,
                        ),
                        // Container(
                        //   height: 300,
                        //   child: ListView.builder(
                        //     itemCount: coffees.length,
                        //     itemBuilder: (BuildContext context, int index) {
                        //       return Item(coffees, index);
                        //     },
                        //   ),
                        // ),
                        Container(
                          height: 600,
                          child: GridView.builder(
                            itemCount: products.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Item3(products, index);
                            },
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              childAspectRatio: 1 / 1.5,
                              crossAxisSpacing: 5,
                              maxCrossAxisExtent: 200,
                            ),
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
      ),
    );
  }


  Widget Item2(List<Product> coffee, index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 90.0,
            height: 80.0,
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage(coffee[index].photo)),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Colors.redAccent,
            ),
          ),
          // Image(
          //   image: AssetImage(coffee[index].photo),
          //   fit: BoxFit.cover,
          //   height: 140,
          //   width: 300,
          // ),
          Container(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget Item3(List<Product> products, index) {
    Product product = products[index];

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails(product),
          ),
        );
      },
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                product.photo,
                fit: BoxFit.cover,
                height: 100,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            product.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "\$${product.price}",
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.add_shopping_cart_rounded, color: Colors.blueGrey[800])),
                  ],
                ),
              ),
              // rating
              Container(
                margin: EdgeInsets.only(top: 2.0),
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
                    SizedBox(
                      width: 10,
                    ),
                    Text("${product.rating}")
                  ],
                ),
              ),
               SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
