// import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:service_app/styles/my_icons.dart';

import 'package:service_app/screens/service_main/main_style/custom_painter.dart';

class PainterBotton extends StatefulWidget {

  @override
  _Botton createState() => _Botton();
}


class _Botton extends State<PainterBotton> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IconBanner(),
      /*Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              // color: Colors.white,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BBCustomPainer(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                      onPressed: () { print('Поиск'); },
                      splashColor: Color.fromARGB(255, 0, 165, 100),
                      backgroundColor: Color.fromARGB(225, 49, 65, 119),
                      child: Container(
                        width: 30,
                        height: 30,
                        child: SvgPicture.asset(iconMain_Button),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                          Column(
                              children: <Widget>[
                                Container(
                                  child:
                                  IconButton(
                                      ///??? splashColor: Color.fromARGB(255, 0, 165, 100),
                                      icon:SvgPicture.asset(iconMain_1),
                                      onPressed: () {print('Задания');}
                                  ),
                                ),
                                Text("Задания",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color.fromARGB(225, 80, 84, 97),
                                ),
                                ),
                              ],
                            ),
                           Column(
                              children: <Widget>[
                                Container(
                                  child:
                                  IconButton(
                                    icon:SvgPicture.asset(iconMain_2),
                                    onPressed: () {print('Фильтры');},
                                  ),
                                ),
                                Text("Фильтры",
                                style: TextStyle(
                                fontSize: 11,
                                color: Color.fromARGB(225, 80, 84, 97),
                                ),
                                ),
                              ],
                            ),
                        Container(
                          width: size.width*0.20,
                        ),
                        Column(
                              children: <Widget>[
                                Container(
                                  child:
                                  IconButton(
                                      icon:SvgPicture.asset(iconMain_3),
                                      onPressed: () {print('Проблемы');}
                                  ),
                                ),
                                Text("Проблемы",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(225, 80, 84, 97),
                                  ),
                                ),
                              ],
                            ),
                       Column(
                              children: <Widget>[
                                Container(
                                  child:
                                  IconButton(
                                      icon:SvgPicture.asset(iconMain_4),
                                      onPressed: () {print('Границы');}
                                  ),
                                ),
                                Text("Границы",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(225, 80, 84, 97),
                                  ),
                                ),
                              ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )*/
    );
  }
}
/*
class BBCustomPainer extends CustomPainter{

@override
  void paint(Canvas canvas, Size size) {

  Paint paint = Paint()..color = Colors.white..style = PaintingStyle.fill;
  Path path = Path()..moveTo(0, 20);

  /// path.quadraticBezierTo(x1, y1, x2, y2)

  path.quadraticBezierTo(0, 0, size.height*0.30, 0);
  path.quadraticBezierTo(0, 0, size.width*0.35, 0);

  path.quadraticBezierTo(size.width*0.40, 0, size.width*0.40, 20);

  path.arcToPoint(Offset(size.width*0.60, 20), //
      radius: Radius.circular(10), clockwise: false);//

  path.quadraticBezierTo(size.width*0.60, 0, size.width*0.65, 0);
  path.quadraticBezierTo(0, 0, size.width*0.90, 0);

  path.quadraticBezierTo(size.width*1, -2, size.height*4.9, 23);
  path.lineTo(size.width, size.height);
  path.lineTo(0, size.height);
  path.close();
  //canvas.drawShadow(path, Colors.black87, 5, true);
  canvas.drawPath(path, paint);
}

@override
  bool shouldRepaint(CustomPainter oldDelegate) {
  return false;

}
}*/
/*

class PainterBotton extends StatefulWidget {

  const PainterBotton({Key? key}) : super(key: key);

  @override
  _Botton createState() => _Botton();
}


class _Botton extends State<PainterBotton> {

  bool _notch = true;
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        floatingActionButton: _notch
            ? FloatingActionButton(
                    backgroundColor: Color.fromARGB(225, 49, 65, 119),
                    splashColor: Color.fromARGB(255, 0, 165, 100),
                     onPressed: () {},
                        child: Container(
                          width: 30,
                          height: 30,
                          child:
                          SvgPicture.asset(iconMain_Button),
                        )
        )
            : null,
        floatingActionButtonLocation: _fabLocation,
        bottomNavigationBar: _BottomAppBar(
          fabLocation: _fabLocation,
          shape: _notch ? const CircularNotchedRectangle() : null,
        ),
      ),
    );
  }
}

class _BottomAppBar extends StatelessWidget {
  const _BottomAppBar({
    this.fabLocation = FloatingActionButtonLocation.centerDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
  ];


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: shape,

AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30)
            ),
          ),
        ),

        notchMargin: 17.0,
          //  shape: shape,
            color: Colors.white,
            child:
            Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 40),
              child: Stack(
                children: <Widget>[
                    // Row(
                    //  children: <Widget>[
                        Container(
                          child: IconButton(
                            //padding: EdgeInsets.only(left: 10),
                            iconSize: 40,
                            icon: SvgPicture.asset(iconMain_1),
                            onPressed: () {
                              print('Задания');
                            },
                          ),
                        ),

                         Container(
                           padding: EdgeInsets.only(top: 60),
                              child: Text('Задания',
                        style: TextStyle(
                            fontSize: 11
                        )
                    ),
                  ),
                        Container(
                          child:
                          IconButton(
                           padding: EdgeInsets.only(left: 100),
                            iconSize: 31,
                            icon: SvgPicture.asset(iconMain_2),
                            onPressed: () {
                              print('Фильтры');
                            },
                          ),
                        ),

                  Container(
                    padding: EdgeInsets.only(top: 60, left: 85),
                    child: Text('Фильтры',
                        style: TextStyle(
                            fontSize: 11
                        )
                    ),
                  ),
                        Container(
                          child:
                          IconButton(
                            padding: EdgeInsets.only(left: 220),
                            iconSize: 40,
                            icon: SvgPicture.asset(iconMain_3),
                            onPressed: () {
                              print('Проблемы');
                            },
                          ),
                        ),
                  Container(
                    padding: EdgeInsets.only(top: 60, left: 205),
                    child: Text('Проблемы',
                        style: TextStyle(
                            fontSize: 11
                        )
                    ),
                  ),
                      //  if (centerLocations.contains(fabLocation)) const Spacer(),
                        Container(
                          child:
                          IconButton(
                            padding: EdgeInsets.only(left: 300),
                            iconSize: 35,
                            icon: SvgPicture.asset(iconMain_4),

                            onPressed: () {
                              print('Границы');
                            },
                          ),
                        ),
                  Container(
                    padding: EdgeInsets.only(top: 60, left: 297),
                    child: Text('Границы',
                        style: TextStyle(
                          fontSize: 11

                        )
                    ),
                  ),
                      ],
                   // ),
               // ],
              ),

            )
        );

  }
}

*/
