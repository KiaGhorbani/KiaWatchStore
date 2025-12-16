
import 'package:intl/intl.dart';

extension IntExtension on int {

  String get numSeparator {
    final NumberFormat numFormat = NumberFormat.decimalPattern();
    return numFormat.format(this);


  }




}
