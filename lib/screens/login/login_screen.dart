import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/styles/my_icons.dart';

import 'package:service_app/screens/screen_style/password_textfield/text_password.dart';
import 'package:service_app/screens/screen_style/button/button.dart';
import 'package:service_app/screens/login/login_textfield/text_login.dart';
import 'package:service_app/screens/screen_style/mini_text_button/text_button.dart';
import 'package:service_app/screens/screen_style/heading_text_screens/heading.dart';




class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LogScreen createState() => _LogScreen();
}

class _LogScreen extends State<LoginScreen> {
  bool _booL = true;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
        child: Container(
          child:
          Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            body:  SingleChildScrollView (
                child: Column(
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[Container(
                              child: Column(children: <Widget>[

                                Container(
                                  width: 150,
                                  height: 140,
                                  child: SvgPicture.asset(iconS),
                                  margin: EdgeInsets.only(top: 40),
                                ),


                                Container(
                                  child:
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: HeadingScreen(
                                      title: 'Добро пожаловать!',
                                    ),
                                  ),
                                ),

                                Container(
                                  child: Text(
                                    'Для продолжения работы\nвведите Ваш логин и пароль.',
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        decoration: TextDecoration.none,
                                        color: Color.fromARGB(255, 67, 73, 78),
                                        //fontWeight: FontWeight.bold,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'OpenSans_Regular'
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  //padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.only(top: 22),
                                ),


                                Container(
                                    padding: EdgeInsets.only(
                                        top: 33, left: 40, right: 40),
                                    child: TextLog(
                                      title: "Логин: ",
                                      prin: 'Логин',
                                    )
                                ),


                                Container(
                                    padding: EdgeInsets.only(
                                        top: 19, left: 40, right: 40),
                                    child: TextPassword(
                                        title: 'Пароль',
                                        view: _togglePasswordView,
                                        obs: _booL,
                                        prin: 'Пароль: '
                                    )
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 7, left: 190),
                                  child: MiniButton(
                                    title: 'Смена пароля',
                                    prin: 'Забыли пароль?',
                                  )
                                ),
                              ])
                          ),

                            Container(
                                margin: EdgeInsets.only(top: 660, left: 55),
                                child: Button(
                                  title: "Вход",
                                  cons: "Вход в аккаунт",
                                )
                              )
                          ],
                        ),
                      )
                    ]
                )
            ) ,
          )
        ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _booL = !_booL;
    });
  }
}

