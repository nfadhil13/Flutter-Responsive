
import 'package:flutter/cupertino.dart';
import 'package:movli/util/responsive_helper/responsive.dart';

class ResponsiveItem<T> {

  final T mobileBody;
  final T? tabletBody;
  final T? dekstopBody;


  ResponsiveItem({
    required this.mobileBody, this.tabletBody, required this.dekstopBody
  }) ;

  T item() {

    if(Responsive.width < Responsive.phone){
      return mobileBody;
    }else if(Responsive.width >= Responsive.phone && Responsive.width < Responsive.tablet){
      return tabletBody ?? mobileBody;
    }
    return dekstopBody ?? mobileBody;
  }
}

