import 'package:flutter/material.dart';
import 'package:folding_cell/cell_content.dart';
import 'package:folding_cell/folding_cell_list_page.dart';
import 'package:folding_cell/folding_demo_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FoldingCellListPage(),
    );
  }
}
