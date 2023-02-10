import 'package:exception_handeling/APP2.dart';
import 'package:exception_handeling/Banks/Axis%20Bank.dart';
import 'package:exception_handeling/app1.dart';
import 'package:exception_handeling/quotes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      initialRoute: 'app2',
      routes: {
        '/':(context)=>App1(),
        'axis':(context)=>axis(),
        'app2':(context)=>App2(),
        'quo':(context)=>Quotes(),
      },
      debugShowCheckedModeBanner: false,
    )
  );
}