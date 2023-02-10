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
  @override
  Widget build(BuildContext context) {
    //Quotes q1 = ModalRoute.of(context)!.settings.arguments as Quotes;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Awesome Quotes",
            style: GoogleFonts.robotoFlex(fontSize: 20, color: Colors.white),),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: typeOfQuotes.length,
          itemBuilder: (context, index) =>
              InkWell(
                  onTap: () {
                    if (index == 0) {
                      Quotes q1 = Quotes(
                          quote1: "I'm not superstitious, but I am a little stitious",
                          quote2: "I'm sick of following my dreams, man. I'm just going to ask where they're going and hook up with 'em later.",
                          quote3: "Before you marry a person, you should first make them use a computer with slow Internet to see who they really are.",
                          quote4:" never feel more alone than when I’m trying to put sunscreen on my back.",
                          quote5: "There are only three ages for women in Hollywood: babe, district attorney and Driving Miss Daisy.",
                      );
                      Navigator.pushNamed(context, 'quo', arguments: q1);
                    }
                    else if (index == 1) {
                      Quotes q1 = Quotes(
                        quote1: "he good times of today, are the sad thoughts of tomorrow.",
                        quote2: "It's sad when someone you know becomes someone you knew.",
                        quote3: "Tears come from the heart and not from the brain.",
                        quote4: "Grief is not as heavy as guilt, but it takes more away from you.” ~ Veronica Roth.",
                        quote5: "When you feel sad, it's okay.",
                      );
                      Navigator.pushNamed(context, 'quo', arguments: q1);
                    }
                    else if (index == 2) {
                      Quotes q1 = Quotes(
                        quote1: "Keep smiling, because life is a beautiful thing and there's so much to smile about.",
                        quote2: "Life is a long lesson in humility.",
                        quote3: "In three words I can sum up everything I've learned about life: it goes on.",
                        quote4: "Love the life you live. ",
                        quote5: "Life is either a daring adventure or nothing at all. ",
                      );
                      Navigator.pushNamed(context, 'quo', arguments: q1);
                    }
                    else if (index == 3) {
                      Quotes q1 = Quotes();
                      Navigator.pushNamed(context, 'quo', arguments: q1);
                    }
                    else if (index == 4) {
                      Quotes q1 = Quotes();
                      Navigator.pushNamed(context, 'quo', arguments: q1);
                    }
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
          SizedBox(width: 10,),
          Text("$qotes", style: GoogleFonts.dosis(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
          Expanded(child: SizedBox()),
          Icon(Icons.arrow_right_rounded, size: 30,),
          SizedBox(width: 10,),
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
          ]
      ),
    );
  }
}
