// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:service_app/styles/my_icons.dart';
// import 'package:service_app/screens/login/login_screen.dart';
//
//
// // class SplashPage extends StatefulWidget {
//
// //   @override
// //   State<StatefulWidget> createState() => _SplashPage();
// // }
//
// // class _SplashPage extends State<SplashPage> {
// //
// //   @override
// //   void initState() {
// //     scheduleMicrotask(() async {
// //       await Future.delayed(Duration(seconds: 3));
// //     });
// //
// //     super.initState();
// //   }
// // }
// // class Splash extends StatefulWidget {
// //   const Splash({Key? key}) : super (key: key);
// //
// //   @override
// //   _SplashScreen createState() => _SplashScreen();
// // }
//
// class SplashScreen extends StatelessWidget {
//
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
//                   fontWeight: FontWeight.w500,
//                   fontFamily: 'OpenSans_Bold'
//               ),
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
//
//           ), //////image
//           /////////////
//         ])
//       // width: 10.0,
//       // height: 10.0,
//     );
//   }
// }
//
// // @override
// // void initState(BuildContext context) {
// //   Timer(Duration(seconds: 3), () {
// //     Navigator.pushReplacement(
// //         context,
// //         MaterialPageRoute(builder: (context) => LoginScreen()));
// //   });
// // }
// class SScreen extends StatefulWidget {
//   @override
//   Screen_Splash createState() => Screen_Splash();
// }
//
// class Screen_Splash extends State<SScreen> {
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Timer(
//         Duration(seconds: 3),
//             () =>
//             Navigator.of(context).pushReplacement(MaterialPageRoute(
//                 builder: (BuildContext context) => LoginScreen())));
//      //<- Creates a widget that displays an image.
//
//     return MaterialApp(
//         home: Scaffold(
//         /* appBar: AppBar(
//           title: Text("MyApp"),
//           backgroundColor:
//               Colors.blue, //<- background color to combine with the picture :-)
//         ),*/
//                  body: Container(
//                      decoration: new BoxDecoration(color: Colors.white),
//
//     ), //<- place where the image appears
//     ),
//     );
//   }
// }
