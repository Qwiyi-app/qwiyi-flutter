import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'package:qwiyi_flutter/src/share/color.dart';

class TrasactionHistory {
  String name;
  String dateTIme;
  String amt;
  Color color;

  TrasactionHistory({
    required this.amt,
    required this.name,
    required this.color,
    required this.dateTIme,
  });

  static List<TrasactionHistory> getHistoryList() {
    return [
      TrasactionHistory(
        name: 'Jan Doe',
        amt: '500',
        dateTIme: DateTime.now().toIso8601String().substring(0, 10),
        color: receiveBalColor,
      ),
      TrasactionHistory(
        name: 'Mary Doe',
        amt: '500',
        dateTIme: DateTime.now().toIso8601String().substring(0, 10),
        color: deductBalColor,
      ),
      TrasactionHistory(
        name: 'John Sam',
        amt: '1000',
        dateTIme: DateTime.now().toIso8601String().substring(0, 10),
        color: deductBalColor,
      ),
      TrasactionHistory(
        name: 'Smith Rebecca',
        amt: '2500',
        dateTIme: DateTime.now().toIso8601String().substring(0, 10),
        color: receiveBalColor,
      ),
      TrasactionHistory(
        name: 'Ola Femi',
        amt: '2500',
        dateTIme: DateTime.now().toIso8601String().substring(0, 10),
        color: deductBalColor,
      ),
      TrasactionHistory(
        name: 'Daniel Rebecca',
        amt: '200',
        dateTIme: DateTime.now().toIso8601String().substring(0, 10),
        color: receiveBalColor,
      ),
      TrasactionHistory(
        name: 'Ruiz Judith',
        amt: '3000',
        dateTIme: DateTime.now().toIso8601String().substring(0, 10),
        color: receiveBalColor,
      ),
    ];
  }
}
