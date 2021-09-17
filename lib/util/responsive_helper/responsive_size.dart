import 'package:flutter/cupertino.dart';

import './responsive.dart';

extension ResponsiveSize on num {

  double get h => Responsive.height * this  /  100;

  double get w => Responsive.width * this / 100;

  double get sp =>this * (Responsive.width / 3) / 100;

}