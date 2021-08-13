import 'package:flutter/material.dart';

class TextCode extends StatelessWidget {

  final String title;

  TextCode({required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        onSubmitted: (text) {
          print(title + text);
        },
        style: TextStyle(
          letterSpacing: 20,
          fontSize: 40.0,
          decoration: TextDecoration.none,
          color: Color.fromARGB(255, 49, 65, 119),
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans_SemiBold',
        ),
        maxLength: 4,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        showCursor: false,
        decoration: InputDecoration(
          counterText: '',
          hintText: '....',
          hintStyle: TextStyle(
              fontSize: 100,
              color: Color.fromARGB(225, 224, 228, 235)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          //KeyboardType: TextInputType.number,
        ),
      ),
    );
  }
}