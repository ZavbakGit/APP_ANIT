import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum TimeStampFormat { parse_12, parse_24 }

extension DateUtils1 on DateTime {
  String getStrDateTime1() {
    return DateFormat('dd.MM.yy HH:mm').format(this);
  }

  bool get isEmptyDate1 => this == getEmptyDate();
}

extension DateUtils on DateTime {
  bool get isEmptyDate => this == getEmptyDate();

  String get weekdayToFullString {
    switch (weekday) {
      case DateTime.monday:
        return "Monday";
      case DateTime.tuesday:
        return "Tuesday";
      case DateTime.wednesday:
        return "Wednesday";
      case DateTime.thursday:
        return "Thursday";
      case DateTime.friday:
        return "Friday";
      case DateTime.saturday:
        return "Saturday";
      case DateTime.sunday:
        return "Sunday";
      default:
        return "Error";
    }
  }

  String get weekdayToAbbreviatedString {
    switch (weekday) {
      case DateTime.monday:
        return "M";
      case DateTime.tuesday:
        return "T";
      case DateTime.wednesday:
        return "W";
      case DateTime.thursday:
        return "T";
      case DateTime.friday:
        return "F";
      case DateTime.saturday:
        return "S";
      case DateTime.sunday:
        return "S";
      default:
        return "Err";
    }
  }

  int get totalMinutes => hour * 60 + minute;

  TimeOfDay get timeOfDay => TimeOfDay(hour: hour, minute: minute);

  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) =>
      DateTime(
        year ?? this.year,
        month ?? this.month,
        day ?? this.day,
        hour ?? this.hour,
        minute ?? this.minute,
        second ?? this.second,
        millisecond ?? this.millisecond,
        microsecond ?? this.microsecond,
      );

  String dateToStringWithFormat({String format = 'y-M-d'}) {
    return DateFormat(format).format(this);
  }

  DateTime stringToDateWithFormat({
    required String format,
    required String dateString,
  }) =>
      DateFormat(format).parse(dateString);

  String getTimeInFormat(TimeStampFormat format) =>
      DateFormat('h:mm${format == TimeStampFormat.parse_12 ? " a" : ""}')
          .format(this)
          .toUpperCase();

  bool compareWithoutTime(DateTime date) =>
      day == date.day && month == date.month && year == date.year;

  bool compareTime(DateTime date) =>
      hour == date.hour && minute == date.minute && second == date.second;
}

DateTime getEmptyDate() {
  return DateTime.parse('0001-01-01T00:00:00.000');
}
