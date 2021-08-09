import 'package:flutter/cupertino.dart';


class HeadingScreen extends StatelessWidget{

  final title;

  HeadingScreen({
    required this.title,
});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(title,
        /// login_screen: 'Добро пожаловать!',
        /// password_screen: 'Смена временного\nпароля',
        /// avtoris_code_screen: 'Установка\nкода авторизации',
        /// enter_code_screen: 'Код авторизации',
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 19,
            decoration: TextDecoration.none,
            color: Color.fromARGB(255, 49, 65, 119),
            fontWeight: FontWeight.w500,
            fontFamily: 'OpenSans_SemiBold'),
      ),
    );
  }
}