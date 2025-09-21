import 'package:intl/intl.dart';

extension DateTimeEx on DateTime{
  String get toFormatedDate{
    DateFormat formater = DateFormat('dd-MM-yyyy');
    return formater.format(this);
  }

  String get viewMonth {
    DateFormat formatter = DateFormat('MMM');
    return formatter.format(this);
  }
}