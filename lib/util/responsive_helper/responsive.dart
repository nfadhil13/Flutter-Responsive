import 'package:get/get.dart';

class Responsive {
  static double _phoneBreakPoint = 576.0;
  static double _tabletBreakPoint = 992.0;
  static double _maximumBreakPoint = 1400.0;
  static double _height = 0;
  static double _width = 0;


  static double get phone  => _phoneBreakPoint;

  static double get tablet => _tabletBreakPoint;

  static double get maximum => _maximumBreakPoint;


  static double get height => _height;

  static double get width => _width;

  static void init(
      double height,
      double width,
      {double? phoneBreakPoint, double? tabletBreakPoint, double? maximumBreakPoint}
      ){
    _phoneBreakPoint = phoneBreakPoint ?? _phoneBreakPoint;
    _tabletBreakPoint = tabletBreakPoint ?? _tabletBreakPoint;
    _maximumBreakPoint = maximumBreakPoint ?? _maximumBreakPoint;
    _height = height;
    _width = width;
    print("width di ini adalah $_width");
  }


}