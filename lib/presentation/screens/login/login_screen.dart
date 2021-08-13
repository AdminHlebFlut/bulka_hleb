import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/internal/styles/my_icons.dart';
import 'package:service_app/presentation/screens/code/avtoris_code_screen.dart';
import 'package:service_app/presentation/screens/password/password_screen.dart';

import 'package:service_app/presentation/screens/screen_style/password_textfield/text_password.dart';
import 'package:service_app/presentation/screens/screen_style/button/button.dart';
import 'package:service_app/presentation/screens/login/login_textfield/text_login.dart';
import 'package:service_app/presentation/screens/screen_style/mini_text_button/text_button.dart';
import 'package:service_app/presentation/screens/screen_style/heading_text_screens/heading.dart';


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
          child:

                                    Scaffold(
                                      body: SingleChildScrollView(
                                        child:
    Center(
    child: Container(
    color: Color.fromARGB(255, 255, 255, 255),
    constraints: BoxConstraints(maxWidth: 700),
    padding: const EdgeInsets.symmetric(
    vertical: 70.0, horizontal: 25.0
    ),
    child:
                                        Stack(
                                          children: <Widget>[

                                            Align(
                                              alignment: Alignment.center,
                                              child:
                                              Container(
                                                child: SvgPicture.asset(iconS),
                                                width: 150,
                                                height: 140,

                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.topCenter,
                                              child: HeadingScreen(
                                                title: 'Добро пожаловать!',
                                              ),
                                              margin: EdgeInsets.only(top: 140),
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
                                              margin: EdgeInsets.only(top: 200),
                                            ),

                                            Container(
                                                padding: EdgeInsets.only(
                                                    top: 300, left: 40, right: 40),
                                                child: TextLog(
                                                  title: "Логин: ",
                                                  prin: 'Логин',
                                                )
                                            ),

                                            Container(
                                                padding: EdgeInsets.only(
                                                    top: 390, left: 40, right: 40),
                                                child: TextPassword(
                                                    title: 'Пароль',
                                                    view: _togglePasswordView,
                                                    obs: _booL,
                                                    prin: 'Пароль: '
                                                )
                                            ),

                                            Container(
                                                margin: EdgeInsets.only(top: 469, left: 190, bottom: 90),
                                                child: MiniButton(
                                                  title: 'Смена пароля',
                                                  prin: 'Забыли пароль?',
                                                )
                                            ),


                                            Container(
                                              //color: Colors.red,
                                                margin: EdgeInsets.only(top: 560),
                                                child: Button(
                                                  title: "Вход",
                                                  cons: "Вход в аккаунт",
                                                  button: PassScreen(),
                                                )

                                            ),

                                          ],
                                        )

                                      ),
    )
          ),


    ));
  }
  void _togglePasswordView() {
    setState(() {
      _booL = !_booL;
    });
  }
}


