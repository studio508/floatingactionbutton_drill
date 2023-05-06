import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                      debugPrint('$counter');
                    });
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                      debugPrint('$counter');
                    });
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
