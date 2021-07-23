import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_app/styles/my_icons.dart';



class EnterCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Column (
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                  Container(
                    margin: EdgeInsets.only(top: 3*40),
                    alignment: Alignment.topCenter,
                    child: Text( 'Код авторизации',
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 19,
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 49, 65, 119),
                          //fontWeight: FontWeight.bold,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'OpenSans_SemiBold'),
                    ),
                  ),
                  //////////////////////////////////////
                  Container(
                    child: Text(
                      'Введите персональный код\n авторизации для входа\n в приложение',
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
                    margin: EdgeInsets.only(top: 170),
                  ),
                  ///////////////////////////////////////////////////
                  Container(
                    width: 300,
                    height: 56,
                    margin: EdgeInsets.only(top: 650, left: 50),
                    child: FloatingActionButton.extended(
                        backgroundColor: Color.fromARGB(255, 49, 65, 119),
                        elevation: 1,
                        onPressed: () { print("Готово");},
                        splashColor: Color.fromARGB(255, 0, 165, 100),
                        label: Text("Готово",
                          style: TextStyle(fontSize: 15,
                            color: Colors.white,
                            fontFamily: 'OpenSans_Regular',
                            fontWeight: FontWeight.w600,),)
                    ),
                  ),
                  /////////Button
                  ////////////////////////////////////////////////,
                  Container(
                      width: 60,
                      height: 49,
                      margin: EdgeInsets.only(top:30, left: 12),
                      child: Column(
                          children: <Widget>[
                            IconButton(
                              splashColor: Color.fromARGB(255, 0, 165, 100),
                              icon: SvgPicture.asset(iconArrow),
                              onPressed: (){ print('Назад'); //setState((){});
                              },
                            )
                          ])
                  ),
////////////////////////////////
                  Container(
                      margin: EdgeInsets.only(top:270, left: 80, right: 80),
                      child: TextField(

                        style: TextStyle(
                          letterSpacing: 20,
                          fontSize: 40.0,
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 49, 65, 119),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans_SemiBold',
                        ),


                        maxLength: 4,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        showCursor: false,
                        decoration: InputDecoration(
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 214, 214, 214),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 214, 214, 214),
                            ),
                          ),
                          //KeyboardType: TextInputType.number,
                        ),
                      )
                  )
                ],
              ),
            ),

          ],
        )
    );

  }
}
