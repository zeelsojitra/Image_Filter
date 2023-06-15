import 'dart:ui';

import 'package:flutter/material.dart';

class Home001 extends StatefulWidget {
  const Home001({Key? key}) : super(key: key);

  @override
  State<Home001> createState() => _Home001State();
}

class _Home001State extends State<Home001> {
  double valueX = 0;
  double valueY = 0;
  bool guj = true;
  bool hin = false;
  bool eng = false;
  bool DarkMode = false;

  String gender = "male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          Icon(Icons.menu),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: valueX, sigmaY: valueY),
          child: Image.network(
              'https://assets.cntraveller.in/photos/60ba23cb1fa22668f025a5ad/master/pass/Burj-Khalifa--1366x768.jpg'),
        ),
        Slider(
          value: valueX,
          onChanged: (value) {
            print(value);

            setState(() {
              valueX = value;
            });
          },
          min: 0,
          max: 100,
        ),
        SizedBox(
          height: 20,
        ),
        Slider(
          value: valueY,
          onChanged: (value) {
            print(value.round());

            setState(() {
              valueY = value;
            });
          },
          min: 0,
          max: 20,
        ),
        Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                    value: guj,
                    onChanged: (value) {
                      setState(() {
                        guj = !guj;
                      });
                    }),
                Text('Gujarati'),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                    value: hin,
                    onChanged: (value) {
                      setState(() {
                        hin = !hin;
                      });
                    }),
                Text('Hindi'),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                    activeColor: Colors.green,
                    value: eng,
                    onChanged: (value) {
                      setState(() {
                        eng = !eng;
                      });
                    }),
                Text('English'),
              ],
            ),
          ],
        ),
        Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: [
            RadioListTile(
              activeColor: Colors.green,
              title: Text("Male"),
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              activeColor: Colors.green,
              title: Text("Female"),
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              activeColor: Colors.green,
              title: Text("Other"),
              value: "other",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("DarkMode"),
            Switch(
                splashRadius: 20,
                inactiveTrackColor: Colors.green,
                activeTrackColor: Colors.amber,
                overlayColor:
                    MaterialStateProperty.all(Colors.green.withOpacity(0.5)),
                thumbColor: MaterialStateProperty.all(Colors.green),
                value: DarkMode,
                onChanged: (value) {
                  setState(() {
                    DarkMode = !DarkMode;
                  });
                })
          ],
        ),
        CircularProgressIndicator(color: Colors.green),
        LinearProgressIndicator()
      ]),
    );
  }
}
