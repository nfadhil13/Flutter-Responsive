import 'package:flutter/material.dart';
import 'package:movli/util/responsive_helper/responsive.dart';

class ResponsiveApp extends StatelessWidget {
  final Widget Function(BuildContext ctx) builder;
  final double? phoneBreakPoint;
  final double? tabletBreakPoint;
  final double? maximumBreakPoint;
  const ResponsiveApp(
      {
        required this.builder,
        this.phoneBreakPoint,
      this.tabletBreakPoint,
      this.maximumBreakPoint,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints){

        Responsive.init(
          constraints.maxHeight,
          constraints.maxWidth,
          phoneBreakPoint: phoneBreakPoint,
          tabletBreakPoint: tabletBreakPoint,
          maximumBreakPoint: maximumBreakPoint
        );
        return builder(ctx);
      },
    );
  }
}
