import 'package:flutter/material.dart';
import 'package:service_app/main.dart';
import 'package:service_app/presentation/screens/password/password_screen.dart';

import 'package:service_app/presentation/screens/screen_style/button/button.dart';
import 'package:service_app/presentation/screens/screen_style/arrow_icon_back/Icon_arrow.dart';
import 'package:service_app/presentation/screens/code/textfield_code/text_code.dart';
import 'package:service_app/presentation/screens/screen_style/heading_text_screens/heading.dart';


import 'dart:ui';
import 'package:flutter/widgets.dart';


class EnterCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body:
        SingleChildScrollView (
          child:
          Column (
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[Container(
                  ),
                    Container(
                        margin: EdgeInsets.only(top: 220, left: 80, right: 80),
                        child: TextCode(title: "Код: ")
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 3*40),
                      alignment: Alignment.topCenter,
                      child: HeadingScreen(
                        title: 'Код авторизации',
                      ),
                    ),

                    Container(
                      child: Text(
                        'Введите персональный код\n авторизации для входа\n в приложение',
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.none,
                            color: Color.fromARGB(255, 67, 73, 78),
                            //fontWeight: FontWeight.bold,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'OpenSans_Regular',
                        ),
                      ),

                      alignment: Alignment.center,
                      //padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 170),
                    ),

                    Container(
                        margin: EdgeInsets.only(top: 650, left: 45),
                        child: Button(
                            title: "Готово",
                          cons: "Готово",
                          button: App(),
                        )
                    ),

                    Container(
                        width: 60,
                        height: 49,
                        margin: EdgeInsets.only(top:30, left: 12),
                        child: ArrowCode()
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
