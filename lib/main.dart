import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'styles/my_icons.dart';

// const List<String> Logo = <String>[
//   // 'assets/notfound.svg', // uncomment to test an asset that doesn't exist.
//   'assets/image.svg',
// ];

void main() {
  runApp(Container(
      color: Color.fromARGB(255, 49, 65, 119),
      // alignment: Alignment.topLeft,
      // padding: EdgeInsets.all(66),
      // margin: EdgeInsets.only(top: 0),

      child: Column(children: <Widget>[
        Container(
          child: Text(
            'Сервисное\nприложение',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(top: 90, left: 47),
        ), /////////Text

        /////////////
        Container(
          child: SvgPicture.asset(iconServerX),
          // alignment: Alignment.topRight,
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(left: 170, top: 450),
          width: 155,
          height: 100,
        ), //////image
        /////////////
      ])

      // width: 10.0,
      // height: 10.0,
      ));
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.indigo[800],
        );
  }
}
