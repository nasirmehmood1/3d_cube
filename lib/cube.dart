import 'dart:math';

import 'package:flutter/material.dart';

class CubeShape extends StatefulWidget {
  const CubeShape({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CubeShape();
  }
}

class _CubeShape extends State<CubeShape> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.height;
    double finalHeight = height * 0.2;
    double finalWidth = Width * 0.2;

    return Stack(
      children: [
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, 0.0, -finalHeight / 2.0),
          child: Container(
            height: finalHeight,
            width: finalWidth,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.amber
                // image: DecorationImage(
                //     image: AssetImage('assets/images/one.png'))
                ),
          ),
        ),
        //Right side
        Transform(
          transform: Matrix4.identity()
            ..translate(finalWidth / 2.0, 0.0, 0.0)
            ..rotateY(pi / 2),
          alignment: Alignment.center,
          child: Container(
            height: finalHeight,
            width: finalWidth,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blueAccent
                // image: DecorationImage(
                //     image: AssetImage('assets/images/two.png'))
                ),
          ),
        ),
        // bottum side
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, finalHeight / 2.0, 0.0)
            ..rotateX(pi / 2),
          alignment: Alignment.center,
          child: Container(
            height: finalHeight,
            width: finalWidth,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white

                // image: DecorationImage(image: AssetImage('assets/images/three.png'))
                ),
          ),
        ),
        //left side
        Transform(
          transform: Matrix4.identity()
            ..translate(-finalWidth / 2.0, 0.0, 0.0)
            ..rotateY(pi / 2),
          alignment: Alignment.center,
          child: Container(
            height: finalHeight,
            width: finalWidth,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.red

                // image: DecorationImage(
                //     image: AssetImage('assets/images/four.png'))
                ),
          ),
        ),
        //back side
        Transform(
          transform: Matrix4.identity()..translate(0.0, 0.0, finalHeight / 2.0),
          child: Container(
            height: finalHeight,
            width: finalWidth,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.deepPurple

                // image: DecorationImage(
                //     image: AssetImage('assets/images/five.png'))
                ),
          ),
        ),
        //top side
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, -finalHeight / 2.0, 0.0)
            ..rotateX(pi / 2),
          alignment: Alignment.center,
          child: Container(
            height: finalHeight,
            width: finalWidth,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.green

                // image: DecorationImage(
                //     image: AssetImage('assets/images/six.png'))
                ),
          ),
        ),
      ],
    );
  }
}
