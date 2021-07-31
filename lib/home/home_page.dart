import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:painter/painter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool finished = false;
  PainterController _controller = _newController();
  @override
  void initState() {
    super.initState();
  }

  static PainterController _newController() {
    PainterController controller = PainterController();
    controller.thickness = 5.0;
    controller.backgroundColor = Colors.green;
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    _controller = _newController();
    _controller.backgroundColor = Colors.green;
    //   return Scaffold(
    //     body: Center(
    //         child: AspectRatio(aspectRatio: 1.0, child: Painter(_controller))),
    //   );
    // }    return MaterialApp(

    Widget inputSection = Painter(_controller);

    Widget dashboard = FloatingActionButton(onPressed: onPressed);

    Widget outputSection = Column();

    return MaterialApp(
      title: 'TITLE',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('APPBAR TITLE'),
        ),
        // Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurpleAccent,
                  ),
                  child: inputSection,
                ),
              ),
              const VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 0,
                width: 20,
              ),
              Center(
                child: dashboard,
              ),
              const VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 0,
                width: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrangeAccent,
                  ),
                  // child: Row(
                  //   children: [outputSection],
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onPressed() {}
}
