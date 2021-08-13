import 'package:flutter/cupertino.dart';


class StringText extends StatelessWidget {

  final string;

  StringText ({
    required this.string,
});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(string,
        /// password_screen:
        /// 1: 'Длина пароля должна быть не менее 7\nи не более 14 символов.',
        /// 2: 'Пароль должен состоять из букв латинского\nалфавита, цифр и символов.',
        /// 3: 'Должен содержать как строчные, так и\nзаглавные буквы.',
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
    );
  }
}