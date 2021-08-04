import 'package:flutter/material.dart';


import 'package:service_app/screens/screen_style/password_textfield/text_password.dart';
import 'package:service_app/screens/screen_style/button/button.dart';
import 'package:service_app/screens/screen_style/mini_text_button/text_button.dart';
import 'package:service_app/screens/screen_style/arrow_icon_back/Icon_arrow.dart';
import 'package:service_app/screens/password/text_screen/text.dart';
import 'package:service_app/screens/screen_style/heading_text_screens/heading.dart';



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
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body:
           SingleChildScrollView (
             child:
             Column (
               children: <Widget>[
                 Container(
                     child: Stack(
                       children: <Widget>[
                         Container(
                         ),

                         Container(
                           alignment: Alignment.topCenter,
                           margin: EdgeInsets.only(top: 80),
                           child: HeadingScreen(
                             title: 'Смена временного\nпароля',
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
                           child: TextPassword(
                             title: 'Новый пароль',
                             view: _PasswordView_New,
                             obs: _bbl,
                             prin: 'Новый пароль: '
                           )
                         ),

                         Container(
                           padding: EdgeInsets.only(top: 360, left: 40, right: 40,),
                           child: TextPassword(
                             title: 'Новый пароль ещё раз',
                             view: _Password_View,
                             obs: _bl,
                             prin: 'Новый пароль ещё раз: '
                           )
                         ),

                         Container(
                           alignment: Alignment.center,
                           margin: EdgeInsets.only(top: 440),
                           child: StringText(
                             string: 'Длина пароля должна быть не менее 7\nи не более 14 символов.',
                           ),
                         ),

                         Container(
                           alignment: Alignment.center,
                           margin: EdgeInsets.only(top: 495),
                           child: StringText(
                             string: 'Пароль должен состоять из букв латинского\nалфавита, цифр и символов.',
                           ),
                         ),

                         Container(
                           alignment: Alignment.center,
                           margin: EdgeInsets.only(top: 550),
                           child: StringText(
                             string: 'Должен содержать как строчные, так и\nзаглавные буквы.',
                           ),
                         ),


                         Container(
                             margin: EdgeInsets.only(top: 620, left: 45),
                             child: Button(
                               title: "Готово",
                               cons: "Новый пароль",
                             )
                         ),

                         Container(
                           alignment: Alignment.center,
                           margin: EdgeInsets.only(top: 705),
                           child: MiniButton(
                             title: 'Пропустить',
                             prin: 'Пропустить',
                           )
                         ),

                         Container(
                             width: 60,
                             height: 49,
                             margin: EdgeInsets.only(top:30, left: 12),
                             child: ArrowCode()
                         ),

                       ],
                     )
                 )
               ],
             )
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