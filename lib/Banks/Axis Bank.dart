import 'package:exception_handeling/utils/variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Model.dart';
class axis extends StatefulWidget {
  const axis({Key? key}) : super(key: key);

  @override
  State<axis> createState() => _axisState();
}

class _axisState extends State<axis> {
  @override
  Widget build(BuildContext context) {
    AxisBanks m1 = ModalRoute.of(context!)?.settings.arguments as AxisBanks;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("${m1.name}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
        centerTitle: true,
      ),
          body: Column(
            children: [
              Container(
          margin: EdgeInsets.all(10),
          height: 60,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(width: 10,),
              Text("Website",style: GoogleFonts.pacifico(color: Colors.black,fontSize: 25,),),
              Expanded(child: SizedBox()),
              InkWell(
                onTap: () async{
                  await launchUrl(Uri.parse("${m1.website}"));
                },
                child: Container(
                    height: double.infinity,
                    width: 60,
                    child: Icon(Icons.chevron_right_rounded,color: Colors.black,size: 20,)),
              ),

            ],
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 2)
          ),
        ),
              Container(
          margin: EdgeInsets.all(10),
          height: 60,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(width: 10,),
              Text("Phone",style: GoogleFonts.pacifico(color: Colors.black,fontSize: 25,),),
              Expanded(child: SizedBox()),
              InkWell(
                onTap: () async{
                  await launchUrl(Uri(scheme: 'tel', path: '${m1.contact}'));
                },
                child: Container(
                    height: double.infinity,
                    width: 60,
                    child: Icon(Icons.chevron_right_rounded,color: Colors.black,size: 20,)),
              ),

            ],
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 2)
          ),
        ),
              Container(
                margin: EdgeInsets.all(10),
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Text("App",style: GoogleFonts.pacifico(color: Colors.black,fontSize: 25,),),
                    Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () async{
                        await launchUrl(Uri.parse("${m1.app}"));
                      },
                      child: Container(
                          height: double.infinity,
                          width: 60,
                          child: Icon(Icons.chevron_right_rounded,color: Colors.black,size: 20,)),
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 2)
                ),
              ),

            ],
          )
    ));
  }
}
