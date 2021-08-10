import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:service_app/styles/my_icons.dart';

import 'package:service_app/screens/service_main/main_style/icons.dart';

class IconBanner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 100,
              // color: Colors.white,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 100),
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
                    padding: EdgeInsets.only(top: 10),
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconsCustom(title: 'Задания', icons: iconMain_1,),
                        IconsCustom(title: 'Фильтры', icons: iconMain_2,),
                        Container(
                          width: size.width*0.20,
                        ),
                        IconsCustom(title: 'Проблемы', icons: iconMain_3,),
                        IconsCustom(title: 'Границы', icons: iconMain_4,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
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

    path.quadraticBezierTo(size.width*1, -2, size.height*4, 23);
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
}