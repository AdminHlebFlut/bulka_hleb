import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/styles/my_icons.dart';

class ArrowCode extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
          children: <Widget>[
            IconButton(
              splashColor: Color.fromARGB(255, 0, 165, 100),
              icon: SvgPicture.asset(iconArrow),
              onPressed: (){ print('Назад'); //setState((){});
              },
            )
          ]),
    );
  }
}