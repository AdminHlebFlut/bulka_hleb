import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/styles/my_icons.dart';

class PredloaderScreen extends StatefulWidget {
  @override
  _Predloader createState() => _Predloader();
}

class _Predloader extends State<PredloaderScreen> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
          child:
          Scaffold(
            backgroundColor: Color.fromARGB(255, 49, 65, 119),
            body: SingleChildScrollView(
              child:
                  Column (
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Container(

                                child: Column(children: <Widget>[
                                  Container(
                                    child: Text(
                                          'Сервисное\nприложение',
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              fontSize: 24.0,
                                              decoration: TextDecoration.none,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'OpenSans_Bold'),
                                        ),
                                        alignment: Alignment.topLeft,
                                        padding: EdgeInsets.all(0),
                                        margin: EdgeInsets.only(top: 90, left: 47),
                                      ), /////////Text

                                  Container(
                                    child: SvgPicture.asset(iconServerX),
                                    padding: EdgeInsets.all(0),
                                    margin: EdgeInsets.only(left: 170, top: 450),
                                    width: 155,
                                    height: 100,
                                      ),
                                    ])
                                )
                          ],
                        ),
                      )
                    ],
                  )
              ),
            ),
          )
      );
  }
}