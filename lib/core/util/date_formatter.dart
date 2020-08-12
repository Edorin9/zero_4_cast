import 'package:intl/intl.dart';

class DateFormatter {
  static String eeeeMmmD(int unixDate) =>
      DateFormat('EEEE, MMMM d').format(_unixToDateTime(unixDate));

  static String jm(int unixDate) =>
      DateFormat.jm().format(_unixToDateTime(unixDate));

  static DateTime _unixToDateTime(int unixDate) =>
      DateTime.fromMillisecondsSinceEpoch(unixDate * 1000).toLocal();
}
