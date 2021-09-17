import 'package:flutter/material.dart';
import 'package:movli/util/responsive_helper/breakpoints.dart';

class MaxWidthContainer extends StatelessWidget {

  final Widget child;

  const MaxWidthContainer({Key? key , required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints:const BoxConstraints(maxWidth: BreakPoints.maximum) ,
        child: child,
      ),
    );
  }
}
