import 'package:exception_handeling/utils/variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  Widget build(BuildContext context) {
    List q1 = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Quotes",
          style: GoogleFonts.mukta(color: Colors.white),
        ),
        centerTitle: true,
      ),
          body: ListView.builder(itemBuilder:(context, index) => Con(q1[index],index),itemCount: emotionalquo.length,)
    ));
  }

  Widget Con(String qu,int ind)
  {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              IconButton(onPressed: () {
                Share.share('${qu}');
              }, icon: Icon(Icons.share,color: Colors.black,size: 20,))
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text(qu,style: GoogleFonts.quicksand(fontSize: 18,color: Colors.black),)),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
            height: 0,
          ),

        ],
      ),
    );
  }
}
