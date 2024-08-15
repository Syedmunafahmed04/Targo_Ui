import 'package:flutter/material.dart';

class forwardpagetransition extends PageRouteBuilder {
  final Widget child;

  forwardpagetransition({required this.child})
      : super(
            transitionDuration: Duration(milliseconds: 500),
            pageBuilder: (context, animation, secondaryAnimation) => child);

  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
            .animate(animation),
        child: child,
      );
}
