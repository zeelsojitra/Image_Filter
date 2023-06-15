import 'dart:ui';

import 'package:flutter/material.dart';

class img_filter extends StatefulWidget {
  const img_filter({Key? key}) : super(key: key);

  @override
  State<img_filter> createState() => _img_filterState();
}

class _img_filterState extends State<img_filter> {
  double imgx = 0;
  double imgy = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text("Image_filter"),
      ),
      body: Column(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: imgx, sigmaY: imgy),
            child: Image.network(
                'https://img.freepik.com/free-vector/building-concept-illustration_114360-4469.jpg?w=2000'),
          ),
          Slider(
            value: imgx,
            onChanged: (value) {
              setState(() {
                imgx = value;
              });
            },
            min: 0,
            max: 20,
          ),
          Slider(
            value: imgy,
            onChanged: (value) {
              setState(() {
                imgy = value;
              });
            },
            min: 0,
            max: 20,
          ),
        ],
      ),
    );
  }
}
