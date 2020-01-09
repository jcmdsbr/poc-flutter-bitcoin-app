import 'package:bitcoin_price/app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: HomePage(),
      backgroundColor: Colors.white,
    ),
  ));
}
