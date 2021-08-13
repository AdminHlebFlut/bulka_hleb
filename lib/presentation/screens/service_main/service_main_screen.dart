import 'package:flutter/material.dart';

import 'package:service_app/presentation/screens/service_main/banner_screen/banner.dart';

class MainScreen extends StatefulWidget {

  const MainScreen({Key? key}) : super(key: key);

  @override
  _Main createState() => _Main();
}

class _Main extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          child: Container(

          ),
        )

      )
    );
  }

}

