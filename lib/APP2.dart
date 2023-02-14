import 'package:exception_handeling/Model.dart';
import 'package:exception_handeling/utils/variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App2 extends StatefulWidget {
  const App2({Key? key}) : super(key: key);

  @override
  State<App2> createState() => _App2State();
}

class _App2State extends State<App2> {
  List data = [""];
  List ver = [];
  @override
  void initState() {
    super.initState();
    ver = [funneyquo,sadquo,motivationalquo,dailyquo,emotionalquo];
  }
  @override
  Widget build(BuildContext context) {
    //Quotes q1 = ModalRoute.of(context)!.settings.arguments as Quotes;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Center(
              child: Text(
            "Jenil",
            style: GoogleFonts.babylonica(fontSize: 18, color: Colors.white),
          )),
          backgroundColor: Colors.black,
          title: Text(
            "Awesome Quotes",
            style: GoogleFonts.robotoFlex(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: typeOfQuotes.length,
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                  Navigator.pushNamed(context, 'quo', arguments: ver[index]);

              },
              child: Con(typeOfQuotes[index])),
        ),
      ),
    );
  }

  Widget Con(String qotes) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 70,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text(
            "$qotes",
            style: GoogleFonts.dosis(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Expanded(child: SizedBox()),
          Icon(
            Icons.arrow_right_rounded,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              spreadRadius: 1,
            )
          ]),
    );
  }
}
