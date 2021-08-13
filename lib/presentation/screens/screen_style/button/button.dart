import 'package:flutter/material.dart';
import 'package:service_app/presentation/screens/code/avtoris_code_screen.dart';


class Button extends StatelessWidget {

  final title;
  final cons;
  final button;

  Button({
  required this.title,
  required this.cons,
  required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:
            TextButton(onPressed: () {
              print(cons);
              /// avtoris_code and enter_code: "Готово",
              /// login_screen: "Вход в аккаунт"
              /// password-screen: "Новый пароль",

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return button;}));
              /// avtoris_code: ,
              /// enter_code: ,
              /// login_screen: ,
              /// password-screen: ,

            },
              child:
              Align(
                alignment: Alignment.center,
                child:
                Container(
                  child:
                  Text(title,
                    /// avtoris_code and enter_code: "Готово",
                    /// login_screen: "Вход",
                    /// password-screen: "Готово",
                    style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'OpenSans_Regular',
                        fontWeight: FontWeight.w600),
                  ),

                ),
              ),
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 165, 100)),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(top: 19, bottom: 19)),
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 49, 65, 119)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(27.0)))
              ),

            ),
    );
  }
}