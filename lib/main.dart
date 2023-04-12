import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = 'Stop';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('WiFi Car Controller'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              child: Column(
                children: [
                  Center(
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              text = 'Forward';
                            });
                          },
                          child: const Text('Forward'))),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                text = 'Left';
                              });
                            },
                            child: const Text('Left')),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                text = 'Stop';
                              });
                            },
                            child: const Text('Stop')),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                text = 'Right';
                              });
                            },
                            child: const Text('Right')),
                      ],
                    ),
                  ),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              text = 'Backward';
                            });
                          },
                          child: const Text('Backward'))),
                  Center(
                    child: Text(text),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
