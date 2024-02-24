import 'dart:math';

import 'package:flutter/material.dart';

class Data extends DataTableSource {
  final List<Map<String, dynamic>> data = List.generate(
      500,
      (index) => {
            'UserID': index,
            'UserName': 'User $index',
            'UserAge': Random().nextInt(60),
          });
  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(data[index]['UserID'].toString())),
      DataCell(Text(data[index]['UserName'].toString())),
      DataCell(Text(data[index]['UserAge'].toString()))
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
