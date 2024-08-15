import 'package:flutter/material.dart';

class screencontainer extends StatefulWidget {
  final Widget child;
  const screencontainer({super.key, required this.child});

  @override
  State<screencontainer> createState() => _screencontainerState();
}

class _screencontainerState extends State<screencontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.purple, const Color.fromARGB(255, 15, 31, 123)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [.01, 1.0])),
      child: widget.child,
    );
  }
}
