import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 62, 14, 109)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'FlutDemo Home Page'),
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
  int _counter = 5;

  var _data = [
    {
      "img": 'https://picsum.photos/250?image=9',
      "pamagat": "laputhgvgjbhop",
    },
    {
      "img": 'https://picsum.photos/250?image=9',
      "pamagat": "lasdadedrftgyhujikolp",
    }
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      //   body: Center(

      //     child: Column(

      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         const Text(
      //           'You have pushed the button this many times:',
      //         ),
      //         Text(
      //           '$_counter',
      //           style: Theme.of(context).textTheme.headlineMedium,
      //         ),
      //         Text(
      //           '$_counter',
      //           style: Theme.of(context).textTheme.headlineMedium,

      //         )
      //       ],
      //     ),

      //   ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            child: Image.network(_data[0]["img"] as String),
          ),
          Container(
              child: Text(
            _data[0]["pamagat"].toString(),
            textAlign: TextAlign.left,
          ))
        ],
      )),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
