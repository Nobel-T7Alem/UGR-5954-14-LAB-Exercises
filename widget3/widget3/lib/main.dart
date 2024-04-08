// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _currentSliderValue = 50; // Initialize the slider value

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 127, 238),
        body: Column(
          children: [
            Expanded(
              child: Text(
                'BMI Calculator',
                style: TextStyle(fontSize: 27, color: Colors.white),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 149, 194, 231),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.black,
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(Icons.male, size: 70, color: Colors.white),
                              Text(
                                'MALE',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: const Color.fromARGB(255, 34, 33, 33),
                          child: Column(
                            children: [
                              Icon(Icons.male, size: 70, color: Colors.white),
                              Text(
                                'MALE',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      // slider
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            color: const Color.fromARGB(255, 86, 81, 81),
                            child: Column(
                              children: [
                                Text(
                                  'Height',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '${_currentSliderValue.toStringAsFixed(1)}',
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                SizedBox(height: 5),
                                Slider(
                                  value: _currentSliderValue,
                                  min: 0,
                                  max: 100,
                                  divisions: 100,
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: const Color.fromARGB(255, 39, 37, 37),child: Container(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  'height',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '60',
                                  style: TextStyle(color: Colors.white, fontSize: 21),
                                ),
                                Row(
                                  children: [
                                    IconButton(onPressed: () {}, icon: Icon(Icons.plus_one)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: const Color.fromARGB(255, 55, 53, 53),
                          child: Container(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  'height',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '60',
                                  style: TextStyle(color: Colors.white, fontSize: 21),
                                ),
                                Row(
                                  children: [
                                    IconButton(onPressed: () {}, icon: Icon(Icons.plus_one)),
                                    IconButton(onPressed: () {}, icon: Icon(Icons.plus_one)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Text(
                'Calculator',
                style: TextStyle(color: Colors.white, fontSize: 23),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}