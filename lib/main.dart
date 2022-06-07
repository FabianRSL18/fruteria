import 'package:flutter/material.dart';
import 'image_carousel.dart';
import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.orange[200],
          leading: Row(
            children: <Widget>[
              const SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.black,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Colors.orange[200],
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const CarouselWithIndicatorDemo(),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Mango',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text('1 por unidad'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const CounterDesign(),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Descripcion del producto',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt '
                            'ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco '
                            'laboris nisi ut aliquip ex ea commodo consequat.',
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side:
                                      const BorderSide(color: Colors.redAccent),
                                ),
                                height: 70.0,
                                child: RaisedButton(
                                  color: Colors.white,
                                  elevation: 0.0,
                                  child: IconButton(
                                    icon: _isFavorited
                                        ? const Icon(
                                            Icons.favorite_border,
                                            color: Colors.redAccent,
                                          )
                                        : const Icon(
                                            Icons.favorite,
                                            color: Colors.redAccent,
                                          ),
                                    onPressed: () {},
                                  ),
                                  onPressed: _toggleFavorite,
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                height: 70.0,
                                minWidth: 260.0,
                                child: RaisedButton(
                                  elevation: 0.0,
                                  color: Colors.deepPurple[300],
                                  onPressed: () {},
                                  child: const Text(
                                    'Añadir al carro',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
