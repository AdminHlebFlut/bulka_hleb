import 'package:flutter/material.dart';
import 'package:circular_reveal_animation/src/circular_reveal_clipper.dart';

class AnimPager extends PageRouteBuilder {
  final Widget page;
  final Alignment centerAlignment;
  final Offset centerOffset;
  final double minRadius;

  AnimPager(
      {required this.page,
      this.minRadius = 0,
      required this.centerAlignment,
      required this.centerOffset})
      : assert(centerOffset != null || centerAlignment != null),
        super(pageBuilder: (_, __, ___) => page);

  @override
  Duration get transitionDuration => Duration(milliseconds: 800);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ClipPath(
      clipper: CircularRevealClipper(
        fraction: animation.value,
        centerAlignment: centerAlignment,
        centerOffset: centerOffset,
        minRadius: minRadius,
        maxRadius: MediaQuery.of(context).size.height / 2 +
            MediaQuery.of(context).size.width / 2,
      ),
      child: child,
    );
  }
}