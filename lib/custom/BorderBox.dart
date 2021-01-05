import 'package:flutter/material.dart';


class BorderBox extends StatelessWidget {

  final Widget child;
  final double border;
  final double width,height;

  const BorderBox({Key key, @required this.child, this.width, this.height, this.border}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(border),
        child: child,
        ), 
    );
  }
}