import 'dart:ui';

import 'package:service_app/internal/styles/anim_widget/anim_page.dart';
import 'package:service_app/internal/styles/circular_reveal_clipper.dart';

import 'package:flutter/cupertino.dart';

class BouncyPage extends PageRouteBuilder {
 final Widget widget;

  BouncyPage({required this.widget})
      :super(
          transitionDuration: Duration(milliseconds: 1500),
          transitionsBuilder: (BuildContext context,
              Animation<double> animsplash,
              Animation<double> secAnim,
              Widget child){

            animsplash = CurvedAnimation(
              parent: animsplash,
              curve: Curves.easeInOutCubic,
            );

            return ScaleTransition(
              alignment: Alignment.center,
              scale: animsplash,
              child: child,
            );
          },
          pageBuilder: (BuildContext context,
              Animation<double> animsplash,
              Animation<double> secAnim){
            return widget;
          });

}
