// ignore_for_file: prefer_const_constructors

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 174, 39, 176),
        
        body: Column(
          children: [
            Text('BMI Calculator', style: TextStyle(fontSize: 27, color: Colors.white),),
            Container(
              color: Color.fromARGB(255, 4, 107, 192),
              child: Column(
                children: [
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin:EdgeInsets.all(10),
                        color: Colors.black,
                        child:Column(
                          children: [Icon(Icons.male, size: 70, color: Colors.white,), Text('MALE', style: TextStyle(color: Colors.white),)],
                        ) ,
                      ), 
                      Container(
                        margin:EdgeInsets.all(10),
                        color: Colors.black,
                        child:Column(
                          children: [Icon(Icons.male, size: 70, color: Colors.white,), Text('MALE', style: TextStyle(color: Colors.white),)],
                        ) ,
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.black,
                        child:Container(
                          margin: EdgeInsets.all(20),
                          child: Column(children: [Text('height',style: TextStyle(color: Colors.white),), Text('60',style: TextStyle(color: Colors.white,fontSize: 21)),Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.plus_one))],)],),
                        )
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(children: [Text('height',style: TextStyle(color: Colors.white),), Text('60',style: TextStyle(color: Colors.white,fontSize: 21)),Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.plus_one))],)],),
                      )
                    ],
                  )
                ],
              ),
              
            )
          ],
        ),
      )
    );
  }
}