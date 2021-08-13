import 'package:flutter/material.dart';


import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/internal/styles/my_icons.dart';


class TextPassword extends StatelessWidget {

  late final title;
  late final obs;
  late final view;
  late final prin;

  TextPassword ({
    required this.title,
    required this.obs,
    required this.view,
    required this.prin,
  });



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: <Widget>[
          TextField(
            onSubmitted: (text) {
              print(prin + text);
            },
            /// login_screen: 'Пароль: '
            /// password_screen: 'Новый пароль: '
            /// password_screen_2: 'Новый пароль ещё раз: '

            style: TextStyle(
              fontFamily: 'OpenSans_SemiBold',
              fontSize: 16,
              decoration: TextDecoration.none,
              color: Color.fromARGB(255, 49, 65, 119),
            ),
            textInputAction: TextInputAction.next,
            maxLength: 14,
            cursorColor: Color.fromARGB(255, 0, 165, 100),
            cursorWidth: 3,
            obscureText: obs,
           /// password_screen: _bbl,
            /// password_screen_2: _bl,
            /// login_screen: _booL,
            decoration: InputDecoration(
              suffix: InkWell(
                onTap: view,
                /// password_screen: _PasswordView_New,
                /// password_screen_2: _Password_View,
                /// login_screen: _togglePasswordView,
                child: SvgPicture.asset(iconEye, height: 22),
              ),
              counterText: '',
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide (
                    color: Colors.white
                ),),
              focusedBorder: OutlineInputBorder (
                borderSide: BorderSide(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),),
              hintStyle: TextStyle(
                fontSize: 15,
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 147, 150, 155),
                fontWeight: FontWeight.w400,
                fontFamily: 'OpenSans_SemiBold',
              ),
              hintText: title,
              /// password_screen: 'Новый пароль',
              /// password_screen_2: 'Новый пароль ещё раз',
              /// login_screen: 'Пароль',
            ),
          )
        ],
      ),
    );
  }
}