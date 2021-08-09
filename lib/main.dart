//import 'screens/loading/loading_screen.dart';
//import 'screens/login/login_screen.dart';
//import 'package:service_app/screens/loading/loading_screen.dart';
//import 'package:service_app/BouncyAnim.dart';
//import 'package:service_app/screens/password/password_screen.dart';
import 'package:service_app/screens/code/avtoris_code_screen.dart';
import 'package:service_app/screens/code/enter_code_screen.dart';                     //
import 'package:service_app/screens/password/password_screen.dart';             //Screens]
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/styles/my_icons.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:service_app/screens/login/login_screen.dart';
import 'package:service_app/styles/anim_widget/anim_page.dart';
import 'package:service_app/screens/predloader/predloader_screen.dart';
import 'package:service_app/screens/service_main/service_main_screen.dart';
import 'package:service_app/screens/service_main/banner_screen/banner.dart';

void main() async {
  //PushNotificationsManager();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new MaterialApp(
    title: "ServiceApp",
    home: new App(),
  ));
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
        const Duration(seconds: 0),
        () => Navigator.push(
            context,
            AnimPager(page: PainterBotton(), centerAlignment: Alignment.center, centerOffset: Offset.zero)));
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: PredloaderScreen(),

    );
  }
}






