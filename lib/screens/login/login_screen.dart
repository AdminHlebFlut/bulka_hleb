import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/styles/my_icons.dart';



class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LogScreen createState() => _LogScreen();
}


class _LogScreen extends State<LoginScreen> {
  bool _booL = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[Container(

                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Column(children: <Widget>[
                        ///////////////////////////////////
                        Container(
                          // margin: EdgeInsets.only(top: 40),
                          width: 150,
                          height: 140,
                          child: SvgPicture.asset(iconS),
                          //alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 40),
                          // width: 150,
                          // height: 140,

                        ),
                        //////image
                        /////////////////////////////////////////
                        Container(
                          child:
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Добро пожаловать!',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  fontSize: 19,

                                  decoration: TextDecoration.none,
                                  color: Color.fromARGB(255, 49, 65, 119),
                                  //fontWeight: FontWeight.bold,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'OpenSans_SemiBold'),
                            ),
                            //alignment: Alignment.center,
                            //padding: EdgeInsets.all(10),
                            //margin: EdgeInsets.only(left:90),
                          ),
                        ),
                        /////////Text
                        //////////////////////////////////////////////
                        Container(
                          child: Text(
                            'Для продолжения работы\nвведите Ваш логин и пароль.',
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.none,
                                color: Color.fromARGB(255, 67, 73, 78),
                                //fontWeight: FontWeight.bold,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'OpenSans_Regular'
                            ),
                          ),
                          alignment: Alignment.center,
                          //padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 22),
                        ),
                        /////////////////////////////////////////////////////
                        Container(
                            padding: EdgeInsets.only(
                                top: 33, left: 40, right: 40),
                            child: Column(
                              children: <Widget>[
                                TextField(

                                  style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.none,
                                    color: Color.fromARGB(255, 49, 65, 119),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSans_SemiBold',
                                  ),

                                  textInputAction: TextInputAction.next,
                                  maxLength: 40,
                                  cursorWidth: 3,
                                  cursorColor: Color.fromARGB(255, 0, 165, 100),
                                  decoration: InputDecoration(
                                    counterText: '',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30.0)),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 217, 217, 217)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30.0)),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 67, 73, 78)),
                                    ),
                                    // border: new OutlineInputBorder(
                                    //   //borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                                    // ),
                                    hintText: 'Логин',
                                  ),
                                ),
                              ],
                            )
                        ),
                        ////////////////////////////////////////////
                        Container(
                            padding: EdgeInsets.only(
                                top: 19, left: 40, right: 40),
                            child: Stack(
                              children: <Widget>[
                                TextField(

                                  style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.none,
                                    color: Color.fromARGB(255, 49, 65, 119),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSans_SemiBold',
                                  ),

                                  cursorWidth: 3,
                                  cursorColor: Color.fromARGB(255, 0, 165, 100),
                                  obscureText: _booL,
                                  decoration: InputDecoration(
                                    suffix: InkWell(
                                      onTap: _togglePasswordView,
                                      child: Icon(Icons.verified_user)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30.0)),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 217, 217, 217)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30.0)),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 67, 73, 78)),
                                    ),
                                    hintText: ('Пароль'),
                                    //   suffix: InkWell(
                                    //     onTap: _PasswordView,
                                    //     child:
                                    //     Icon(
                                    //       BooL
                                    //           ? Icons.closed_caption
                                    //           : Icons.closed_caption_disabled,)
                                    // ),
                                  ),

                                  // Align(
                                  //   child:
                                  //   Container(
                                  //       width: 60,
                                  //       height: 49,
                                  //       margin: EdgeInsets.only(top:7, left: 230),
                                  //       child: Column(
                                  //           children: <Widget>[
                                  //         IconButton(
                                  //           icon: SvgPicture.asset(iconEyeOFF),
                                  //             onPressed: (){ print('Пароль скрыт'); //setState((){});
                                  //             },
                                  //         )
                                  //       ])
                                  //       //alignment: Alignment,
                                  //   ) )
                                  //  Container(
                                  //   child: SvgPicture.asset(iconEye),
                                  // )
                                )
                              ],
                            )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 7, left: 190),
                          child: GestureDetector(
                            onTap: () {
                              print('Смена пароля');
                            },
                            child: Text('Забыли пароль?',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'OpenSans_Regular',
                                  color: Color.fromARGB(255, 49, 65, 119)

                              ),
                            ),
                          ),
                        ),

                      ])

                  ),
                    Align(
                      child: Container(
                        width: 300,
                        height: 56,
                        margin: EdgeInsets.only(top: 660),
                        child: FloatingActionButton.extended(
                            backgroundColor: Color.fromARGB(255, 49, 65, 119),
                            elevation: 1,
                            onPressed: () {
                              print("Вход в аккаунт");
                            },
                            splashColor: Color.fromARGB(255, 0, 165, 100),
                            label: Text("Вход",
                              style: TextStyle(fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'OpenSans_Regular',
                                fontWeight: FontWeight.w600,),)
                        ),

                      ),
                      /////////Button
                      ////////////////////////////////////////////////,
                    ),

                    // Align(
                    //     child:
                    //     Container(
                    //         width: 60,
                    //         height: 49,
                    //         margin: EdgeInsets.only(top: 407, left: 230),
                    //         child: Column(
                    //             children: <Widget>[
                    //               IconButton(
                    //                 icon: SvgPicture.asset(iconEyeOFF),
                    //                 onPressed: () {
                    //                   print('Пароль скрыт'); //setState((){});
                    //                 },
                    //               )
                    //             ])
                    //       //alignment: Alignment,
                    //     )),
                  ],
                ),

              )
            ]
        )
    );


    // void _togglePasswordView() {
    //   setState(() {
    //     BooL = !BooL;
    //   });
    // }
  }
  void _togglePasswordView() {
    setState(() {
      _booL = !_booL;
    });
  }
}

////////////////////////////////////////////////////////////////////
//   Widget build(BuildContext context) {
//
//     return Container(
//
//
//         color: Color.fromARGB(255, 255, 255, 255),
//         // alignment: Alignment.topLeft,
//         // padding: EdgeInsets.all(66),
//         // margin: EdgeInsets.only(top: 0),
//
//         child: Column(children: <Widget>[
//
//           ///////////////////////////////////
//           Container(
//             child: SvgPicture.asset(iconS),
//             // alignment: Alignment.topRight,
//             padding: EdgeInsets.all(0),
//             alignment: Alignment.center,
//             margin: EdgeInsets.only(top: 40),
//             width: 150,
//             height: 140,
//
//           ), //////image
//           /////////////////////////////////////////
//
//           Container(
//             child: Text(
//               'Добро пожаловать!',
//               textDirection: TextDirection.ltr,
//               style: TextStyle(
//                   fontSize: 19,
//
//                   decoration: TextDecoration.none,
//                   color: Color.fromARGB(255, 49, 65, 119),
//                   //fontWeight: FontWeight.bold,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: 'OpenSans_SemiBold'),
//             ),
//             alignment: Alignment.center,
//             //padding: EdgeInsets.all(10),
//             //margin: EdgeInsets.only(left:90),
//           ), /////////Text
//           //////////////////////////////////////////////
//
//           Container(
//             child: Text(
//               'Для продолжения работы\n введите Ваш логин и пароль.',
//               textDirection: TextDirection.ltr,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontSize: 16,
//
//                   decoration: TextDecoration.none,
//                   color: Color.fromARGB(255, 67, 73, 78),
//                   //fontWeight: FontWeight.bold,
//                   fontWeight: FontWeight.w400,
//                   fontFamily: 'OpenSans_Regular'
//               ),
//             ),
//             alignment: Alignment.center,
//             //padding: EdgeInsets.all(10),
//             margin: EdgeInsets.only(top: 22),
//           ), /////////Text
//           //////////////////////////////////////////////////
//     //       Container(
//     //         padding: EdgeInsets.only(top: 100, left: 20, right:20 ),
//     //         child: Column(
//     //        children: <Widget>[
//     //          TextField(),
//     //
//     // ],
//     // )
//     //
//     //
//     //
//     //       ),
//           /////////////////////////////////////////////////////
//           Container(
//             width: 300,
//             height: 56,
//             margin: EdgeInsets.only(top:378),
//             child: FloatingActionButton.extended(
//               backgroundColor: Color.fromARGB(255, 49, 65, 119),
//               elevation: 1,
//               onPressed: (){ print("Button Click"); },
//
//               splashColor: Color.fromARGB(255, 0, 165, 100),
//               label: Text("Вход",
//                      style: TextStyle(fontSize: 15,
//                      color: Colors.white,
//                      fontFamily: 'OpenSans_Regular',
//                       fontWeight: FontWeight.w600,
//                        ),
//
//               ),
//             ),
//             ),
//           /////////Button
//           ////////////////////////////////////////////////
//         ])
//
//
//     );
//
//
//   }
// }

// class Screen extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//    body: Column(
//      children: <Widget>[
//        Container(
//              padding: EdgeInsets.only(top: 200, left: 60, right: 60 ),
//              child: Column(
//                children: <Widget>[
//                  TextField(
//                    decoration: InputDecoration(
//                      labelText: 'Login',
//
//                    ),
//                  ),
//
//                ],
//              )
//
//
//
//          ),
//      ],
//    ),
//     );
//   }
// }


