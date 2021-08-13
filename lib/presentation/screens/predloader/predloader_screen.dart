import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/internal/styles/my_icons.dart';

class PredloaderScreen extends StatefulWidget {
  @override
  _Predloader createState() => _Predloader();
}

class _Predloader extends State<PredloaderScreen> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Center(
    child: Container(
      color: Color.fromARGB(255, 49, 65, 119),
    constraints: BoxConstraints(maxWidth: 700),
    padding: const EdgeInsets.symmetric(
    vertical: 70, horizontal: 25.0
    ),
          child:
              Stack(
                children: <Widget>[
                  /*Container(
                    color: Colors.cyanAccent,
                    child: SingleChildScrollView(
                        child:
                        Column(children: <Widget>[
                          Container(
                            color: Colors.green,
                            child:
                            Text(
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

                            margin: EdgeInsets.only(top: 10, left: 1),
                          ),

                        ])
                    ),
                  ),*/
                  Align(
                    alignment: Alignment.bottomRight,
                    child:
                    Container(
                      //color: Colors.red,
                      child: SvgPicture.asset(iconServerX),
                      //margin: EdgeInsets.only(left: 150, top: 390),
                      width: 155,
                      height: 100,

                    ) ,),
                  Align(
                    alignment: Alignment.topRight,
                    child:
                    Container(
                      //color: Colors.green,
                      child:
                      Text(
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

                      margin: EdgeInsets.only(top: 40, left: 20),
                    ),),
                    /*Container(
                        color: Colors.purpleAccent,
                        //color: Color.fromARGB(255, 49, 65, 119),
                        child:
                        SingleChildScrollView(
                            child:
                            Column(
                              children: <Widget>[

                                Container(
                                  //color: Colors.green,
                                  child:
                                  Text(
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

                                  margin: EdgeInsets.only(top: 40, left: 20),
                                ),


                                Align(
                                  alignment: Alignment.bottomRight,
                                  //color: Colors.orange,
                                  child:
                                  Container(
                                    //color: Colors.red,
                                    child: SvgPicture.asset(iconServerX),
                                    //margin: EdgeInsets.only(left: 150, top: 390),
                                    width: 155,
                                    height: 100,

                                  ) ,
                                ),
                              ],
                            )


                        )
                    ),*/




                                  ],
                                ),




)
        )

              );


  }
}