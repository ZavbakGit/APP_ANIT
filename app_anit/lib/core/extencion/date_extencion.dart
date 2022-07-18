import 'package:intl/intl.dart';

extension ExtDateTime on DateTime {
  String getStrDateTime() {
    return DateFormat('dd.MM.yy HH:mm').format(this);
  }

  bool get isEmptyDate => this == getEmptyDate();
}

DateTime getEmptyDate() {
  return DateTime.parse('0001-01-01T00:00:00.000');
}
