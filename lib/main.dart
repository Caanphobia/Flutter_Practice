import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Discover'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //_counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.white,
            title: Text(widget.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 40.0)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Explore the best place in the world!',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.grey)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.white,
                width: 300.0,
                height: 48.0,
                child: Text(
                  'Search your trip',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.grey),
                  textAlign: TextAlign.start,
                ),
              ),
              Material(
                child: Center(
                  child: Ink(
                    decoration: const ShapeDecoration(
                        color: Colors.pinkAccent, shape: CircleBorder()),
                    child: IconButton(
                      icon: const Icon(Icons.search, size: 30.0),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
