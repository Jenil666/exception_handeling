
import 'package:exception_handeling/Banks/Axis%20Bank.dart';
import 'package:exception_handeling/app1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      //initialRoute: 'axis',
      routes: {
        '/':(context)=>App1(),
        'axis':(context)=>axis(),
      },
      debugShowCheckedModeBanner: false,
    )
  );
}