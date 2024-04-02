// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.backpack),
          actions: [Icon(Icons.download_for_offline), Icon(Icons.settings)],
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/image1.jpg"),
            SizedBox(
              height: 10,
            ),
            Text(
              "1957 Prsche 911 Carrela",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up_sharp),
                    SizedBox(
                      width: 5,
                    ),
                    Text("0"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment),
                    SizedBox(
                      width: 5,
                    ),
                    Text("0"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(
                      width: 5,
                    ),
                    Text("0"),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Essential Information",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("2 of 3 done"),
              ],
            ),
            Divider(
              thickness: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.verified,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Year, Make, Model, VIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.edit_document,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Year:1995"),
                    Text("Year:porache"),
                    Text("Year:911 Camera"),
                    Text("vIN:911"),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              children: [
                Icon(
                  Icons.verified,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Year, Make, Model, VIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.edit_document,
                  color: Colors.grey,
                )
              ],
            ),
            Divider(),
            Row(
              children: [
                Icon(
                  Icons.verified,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Year, Make, Model, VIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.edit_document,
                  color: Colors.grey,
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
