import 'package:service_app/presentation/screens/code/avtoris_code_screen.dart';
import 'package:service_app/presentation/screens/code/enter_code_screen.dart';
import 'package:service_app/presentation/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:service_app/internal/styles/anim_widget/anim_page.dart';
import 'package:service_app/presentation/screens/password/password_screen.dart';
import 'package:service_app/presentation/screens/predloader/predloader_screen.dart';
import 'package:service_app/presentation/screens/service_main/banner_screen/banner.dart';
import 'package:service_app/presentation/screens/service_main/service_main_screen.dart';

void main() async {
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
        const Duration(seconds: 4),
            () =>
            Navigator.push(
                context,
                AnimPager(page:
                LoginScreen(),
                //CodeScreen(),
                //EnterCode(),
                //PassScreen(),
                //PainterBotton(),
                  //PredloaderScreen(),
                    centerAlignment: Alignment.center,
                    centerOffset: Offset.zero)));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child:
      PredloaderScreen(),

    );
  }
}











