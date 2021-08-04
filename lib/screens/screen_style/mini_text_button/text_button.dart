import 'package:flutter/widgets.dart';

class MiniButton extends StatelessWidget{

  final title;
  final prin;

  MiniButton({
    required this.title,
    required this.prin,
});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {
          print(title);
          /// login_screen: 'Смена пароля'
          /// password_screen: 'Пропустить'
        },
        child: Text(prin,
          /// login_screen: 'Забыли пароль?'
          /// password_screen: 'Пропустить'
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'OpenSans_Regular',
              color: Color.fromARGB(255, 49, 65, 119)
          ),
        ),
      ),
    );
  }
}