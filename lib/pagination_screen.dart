import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pagination/data_source.dart';

class Pagination extends StatelessWidget {
  const Pagination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagination'),
        centerTitle: true,
      ),
      body: Column(children: [
        Center(
          child: PaginatedDataTable(
              columnSpacing: 100,
              horizontalMargin: 80,
              //showCheckboxColumn: true,
              header: const Center(child: Text('User Data')),
              //rowsPerPage: 10,
              columns: const [
                DataColumn(label: Text('UserId')),
                DataColumn(label: Text('UserName')),
                DataColumn(label: Text('UserAge'))
              ],
              source: Data()),
        )
      ]),
    );
  }
}
