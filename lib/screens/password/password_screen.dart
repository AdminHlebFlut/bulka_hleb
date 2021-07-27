//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/styles/my_icons.dart';

class PassScreen extends StatefulWidget{
  const PassScreen({Key? key}) : super (key: key);

  @override
  _Password createState() => _Password();
}

class _Password extends State<PassScreen> {
  bool _bbl = true;
  bool _bl = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Column (
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 80),
                    child: Text('Смена временного\nпароля',
                        textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 19,
                        decoration: TextDecoration.none,
                        color: Color.fromARGB(255, 49, 65, 119),
                        fontFamily: 'OpenSans_SemiBold',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 155),
                    child: Text('Из соображений безопасности,\nВам необходимо сменить\nвременный пароль, выданный\nпри регистрации.',
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: Color.fromARGB(255, 67, 73, 78),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'OpenSans_Regular',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 278, left: 40, right: 40,),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          style: TextStyle(
                            fontFamily: 'OpenSans_SemiBold',
                            fontSize: 15,
                            decoration: TextDecoration.none,
                            color: Color.fromARGB(255, 49, 65, 119),
                          ),
                          textInputAction: TextInputAction.next,
                          maxLength: 14,
                          cursorColor: Color.fromARGB(255, 0, 165, 100),
                          cursorWidth: 3,
                          obscureText: _bbl,
                          decoration: InputDecoration(
                            suffix: InkWell(
                              onTap: _PasswordView_New,
                              child: Icon(Icons.remove_red_eye_outlined)
                          ),
                            counterText: '',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide (
                                color: Color.fromARGB(255, 217, 217, 217)
                              ),),
                            focusedBorder: OutlineInputBorder (
                              borderSide: BorderSide(color: Color.fromARGB(255, 67, 73, 78)),
                              borderRadius: const BorderRadius.all(Radius.circular(30.0)),),

                            hintText: 'Новый пароль',
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 360, left: 40, right: 40,),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          style: TextStyle(
                            fontFamily: 'OpenSans_SemiBold',
                            fontSize: 15,
                            decoration: TextDecoration.none,
                            color: Color.fromARGB(255, 49, 65, 119),
                          ),
                          maxLength: 14,
                          cursorColor: Color.fromARGB(255, 0, 165, 100),
                          cursorWidth: 3,
                          obscureText: _bl,
                          decoration: InputDecoration(
                            suffix: InkWell(
                                onTap: _Password_View,
                                child: Icon(Icons.remove_red_eye_outlined)
                            ),
                            counterText: '',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide (
                                  color: Color.fromARGB(255, 217, 217, 217)
                              ),),
                            focusedBorder: OutlineInputBorder (
                              borderSide: BorderSide(color: Color.fromARGB(255, 67, 73, 78)),
                              borderRadius: const BorderRadius.all(Radius.circular(30.0)),),

                            hintText: 'Новый пароль еще раз',
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 440),
                    child: Text('Длина пароля должна быть не менее 7\nи не более 14 символов.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        color: Color.fromARGB(255, 147, 150, 155),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'OpenSans_Regular'
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 495),
                    child: Text('Пароль должен состоять из букв латинского\nалфавита, цифр и символов.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 147, 150, 155),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'OpenSans_Regular'
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 550),
                    child: Text('Должен содержать как строчные, так и\nзаглавные буквы.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 147, 150, 155),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'OpenSans_Regular'
                      ),
                    ),
                  ),
                  // DropdownButton<String>(),

                  Align(
                    child: Container(
                      width: 300,
                      height: 56,
                      margin: EdgeInsets.only(top: 620),
                      child: FloatingActionButton.extended(
                          backgroundColor: Color.fromARGB(255, 49, 65, 119),
                          elevation: 1,
                          onPressed: () { print("Новый пароль");},
                          splashColor: Color.fromARGB(255, 0, 165, 100),
                          label: Text("Готово",
                            style: TextStyle(fontSize: 15,
                              color: Colors.white,
                              fontFamily: 'OpenSans_Regular',
                              fontWeight: FontWeight.w600,),)
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 705),
                    child: GestureDetector(
                      onTap: () { print('Пропустить'); },
                      child: Text('Пропустить',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'OpenSans_Regular',
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 49, 65, 119),
                      ),),
                    ),
                  ),
                  Container(
                      width: 60,
                      height: 49,
                      margin: EdgeInsets.only(top:30, left: 12),
                      child: Column(
                          children: <Widget>[
                            IconButton(
                              splashColor: Color.fromARGB(255, 0, 165, 100),
                              icon: SvgPicture.asset(iconArrow),
                              onPressed: (){ print('Назад'); //setState((){});
                              },
                            )
                          ])
                  ),
                  // Align(
                  //     child:
                  //     Container(
                  //         width: 60,
                  //         height: 49,
                  //         margin: EdgeInsets.only(top:285, left: 230),
                  //         child: Column(
                  //             children: <Widget>[
                  //               IconButton(
                  //                 icon: SvgPicture.asset(iconEyeOFF),
                  //                 onPressed: (){ print('Пароль скрыт'); //setState((){});
                  //                 },
                  //               )
                  //             ])
                  //       //alignment: Alignment,
                  //     ) ),
                  // Align(
                  //     child:
                  //     Container(
                  //         width: 60,
                  //         height: 49,
                  //         margin: EdgeInsets.only(top:366, left: 230),
                  //         child: Column(
                  //             children: <Widget>[
                  //               IconButton(
                  //                 //splashColor: Color.fromARGB(255, 147, 150, 155),
                  //                 icon: SvgPicture.asset(iconEyeOFF),
                  //                 onPressed: (){ print('Пароль скрыт'); //setState((){});
                  //                 },
                  //               )
                  //             ])
                  //       //alignment: Alignment,
                  //     ) ),
                ],
              )
            )
          ],
        )
    );
  }
  void _PasswordView_New() {
    setState(() {
      _bbl = !_bbl;
    });
  }
  void _Password_View() {
    setState(() {
      _bl = !_bl;
    });
  }
}