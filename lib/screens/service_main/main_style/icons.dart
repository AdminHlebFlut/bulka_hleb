
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
// import 'package:service_app/styles/my_icons.dart';

class IconsCustom extends StatelessWidget {

  final title;
  final icons;

  IconsCustom({required this.title, required this.icons});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Column(
            children: <Widget>[
              Container(
                child:
                IconButton(
                  ///??? splashColor: Color.fromARGB(255, 0, 165, 100),
                    icon:SvgPicture.asset(icons),
                    onPressed: () {print(title);}
                ),
              ),
              Text(title,
                style: TextStyle(
                  fontSize: 11,
                  color: Color.fromARGB(225, 80, 84, 97),
                ),
              ),
            ],
          ),
        ]

      ),
    );
  }
}