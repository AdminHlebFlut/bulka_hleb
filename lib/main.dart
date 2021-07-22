//import 'dart:async';
//import 'dart:html';
//import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:service_app/splash.dart';
import 'core/firebase_messaging/firebase_messaging.dart';
import 'styles/my_icons.dart';
//import 'screens/loading/loading_screen.dart';   //
//import 'screens/login/login_screen.dart';      //Screens
//import 'package:service_app/screens/loading/loading_screen.dart';
import 'package:service_app/screens/login/login_screen.dart';

void main() async {
  //PushNotificationsManager();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

   runApp(App());
  // Timer(Duration(seconds: 3), () {
  //   Navigator.of(context).push(_createRoute())
  // });
}

// class ScreenApp extends StatelessWidget {
//
//   final routes = <String, WidgetBuilder>{
//
//     '/Home': (BuildContext context) => Home(title: 'service_app')
//   };
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'service_app',
//       home: Splash(nextRoute: '/Home'),
//       routes: routes,
//     );
//   }
// }


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();


}


class _AppState extends State<App> {
  late FirebaseMessaging _messaging;
  @override
  void initState() {
    _messaging = FirebaseMessaging.instance;
    _messaging
        .getToken()
        .then((token) => {print("FirebaseMessaging token: $token")});
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ServiceApp",
      home: SplashScreen(),
    );
  }
}

// class SplashPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Color.fromARGB(255, 49, 65, 119),
//         // alignment: Alignment.topLeft,
//         // padding: EdgeInsets.all(66),
//         // margin: EdgeInsets.only(top: 0),
//
//         child: Column(children: <Widget>[
//           Container(
//             child: Text(
//               'Сервисное\nприложение',
//               textDirection: TextDirection.ltr,
//               style: TextStyle(
//                   fontSize: 30.0,
//                   decoration: TextDecoration.none,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//             alignment: Alignment.topLeft,
//             padding: EdgeInsets.all(0),
//             margin: EdgeInsets.only(top: 90, left: 47),
//           ), /////////Text
//
//           /////////////
//           Container(
//             child: SvgPicture.asset(iconServerX),
//             // alignment: Alignment.topRight,
//             padding: EdgeInsets.all(0),
//             margin: EdgeInsets.only(left: 170, top: 450),
//             width: 155,
//             height: 100,
//           ), //////image
//           /////////////
//         ])
//
//         // width: 10.0,
//         // height: 10.0,
//         );
//   }
// }

