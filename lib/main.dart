//import 'dart:async';
//import 'dart:html';
//import 'dart:js';
//import 'package:circular_reveal_animation/circular_reveal_animation.dart';
//import 'package:service_app/splash.dart';
//import 'core/firebase_messaging/firebase_messaging.dart';
//import 'screens/loading/loading_screen.dart';
//import 'screens/login/login_screen.dart';
//import 'package:service_app/screens/loading/loading_screen.dart';
//import 'package:service_app/BouncyAnim.dart';
//import 'package:service_app/screens/password/password_screen.dart';
//import 'package:service_app/screens/code/avtoris_code.dart';
//import 'package:service_app/screens/code/enter_code.dart';                     //
// import 'package:service_app/screens/password/password_screen.dart';             //Screens]


//import 'package:service_app/circular_reveal_clipper.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/styles/my_icons.dart';
import 'package:service_app/screens/login/login_screen.dart';
import 'package:service_app/anim_page.dart';

void main() async {
  //PushNotificationsManager();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new MaterialApp(
    title: "ServiceApp",
    home: new App(),
  ));
  /* Timer(Duration(seconds: 3), () {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>LoginScreen()));
   // Navigator.of(context).push(_createRoute())
  });*/
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  late FirebaseMessaging _messaging;
  @override
  void initState() {
    _messaging = FirebaseMessaging.instance;
    _messaging
        .getToken()
        .then((token) => {print("FirebaseMessaging token: $token")});
    super.initState();

    new Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.push(
            context,
            AnimPager(page: LoginScreen(), centerAlignment: Alignment.center, centerOffset: Offset.zero)));
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          color: Color.fromARGB(255, 49, 65, 119),
          child: new Column(children: <Widget>[
            // alignment: Alignment.topLeft,
            // padding: EdgeInsets.all(66),
            // margin: EdgeInsets.only(top: 0),

            Container(
              child: Text(
                'Сервисное\nприложение',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 24.0,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'OpenSans_Bold'),
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
          ),
    );
  }
}






