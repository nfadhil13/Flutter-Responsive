import 'package:flutter/material.dart';
import 'package:movli/util/responsive_helper/breakpoints.dart';
import 'package:movli/util/responsive_helper/responsive.dart';

class ResponsiveLayout extends StatelessWidget {

  final Widget Function() mobileBody;
  final Widget Function()? tabletBody;
  final Widget Function()? dekstopBody;


  const ResponsiveLayout({
    required this.mobileBody, this.tabletBody, this.dekstopBody,  Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      if(Responsive.width < Responsive.phone){
        return mobileBody();
      }else if(Responsive.width >= Responsive.phone && Responsive.width < Responsive.tablet){
        return tabletBody?.call() ?? mobileBody();
      }
      return dekstopBody?.call() ?? mobileBody();
    });

  }
}

