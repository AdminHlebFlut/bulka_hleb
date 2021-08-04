import 'package:flutter/material.dart';

class TextLog extends StatelessWidget {

  final title;
  final prin;

  TextLog({
    required this.title,
    required this.prin,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Column(
        children: <Widget>[
          TextField(
            onSubmitted: (text) {
              print(title + text);
              /// "Логин: "
            },
            style: TextStyle(
              fontSize: 16,
              decoration: TextDecoration.none,
              color: Color.fromARGB(255, 49, 65, 119),
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans_SemiBold',
            ),
            textInputAction: TextInputAction.next,
            maxLength: 40,
            cursorWidth: 3,
            cursorColor: Color.fromARGB(255, 0, 165, 100),
            decoration: InputDecoration(
                counterText: '',
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                    Radius.circular(30.0)),
                borderSide: BorderSide(
                    color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                    Radius.circular(30.0)),
                borderSide: BorderSide(
                    color: Colors.white),
              ),
              hintStyle: TextStyle(
                fontSize: 15,
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 147, 150, 155),
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans_SemiBold',
              ),
              hintText: prin,
              /// 'Логин'
            ),
          ),
        ],
      ),
    );
  }
}
