import 'package:exception_handeling/utils/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Model.dart';

class App1 extends StatefulWidget {
  const App1({Key? key}) : super(key: key);

  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  @override
  Widget build(BuildContext context) {

    //AxisBanks m1 = ModalRoute.of(context!)?.settings.arguments as AxisBanks;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Bank Info",
            style: GoogleFonts.robotoSlab(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(itemCount: banklogo.length,itemBuilder: (context, index) =>
            InkWell(
            onTap: (){
              if(index == 0)
                {
                  AxisBanks m1 = AxisBanks(name: "Axis Bank",website: "https://www.axisbank.com/",app: "https://play.google.com/store/apps/details?id=com.axisidp.mobile",contact: "1860 419 5555");
                  Navigator.pushNamed(context, 'axis',arguments: m1);
                }
              else if(index == 1)
                {
                  AxisBanks m1 = AxisBanks(name: "Yes Bank",website: "https://www.yesbank.in/",app: "https://play.google.com/store/apps/details?id=com.atomyes",contact: "1800 1200");
                  Navigator.pushNamed(context, 'axis',arguments: m1);
                }
              else if(index == 2)
                {
                  AxisBanks m1 = AxisBanks(name: "SBI Bankk",website: "https://www.onlinesbi.sbi/",app: "https://play.google.com/store/apps/details?id=com.sbi.lotusintouch",contact: "1800 1234");
                  Navigator.pushNamed(context, 'axis',arguments: m1);
                }
              else if(index == 3)
              {
                AxisBanks m1 = AxisBanks(name: "RBL Bank",website: "https://www.rblbank.com/",app: "https://play.google.com/store/apps/details?id=com.rblbank.mobank",contact: "022 6115 6300");
                Navigator.pushNamed(context, 'axis',arguments: m1);
              }
              else if(index == 4)
              {
                AxisBanks m1 = AxisBanks(name: "Kotak Bank",website: "https://www.kotak.com/en/home.html",app: "https://play.google.com/store/apps/details?id=com.onlinebankaccount.zerobalanceaccount",contact: "12345 12345");
                Navigator.pushNamed(context, 'axis',arguments: m1);
              }
              else if(index == 5)
              {
                AxisBanks m1 = AxisBanks(name: "Indian Bank",website: "https://indianbank.in/#!",app: "https://play.google.com/store/apps/details?id=com.IndianBank.IndOASIS",contact: "4565");
                Navigator.pushNamed(context, 'axis',arguments: m1);
              }
              else if(index == 6)
              {
                AxisBanks m1 = AxisBanks(name: "Canera Bank",website: "https://canarabank.com/",app: "https://play.google.com/store/apps/details?id=com.canarabank.voucher",contact: "1009");
                Navigator.pushNamed(context, 'axis',arguments: m1);
              }
              else if(index == 7)
              {
                AxisBanks m1 = AxisBanks(name: "Bandhan Bank",website: "https://bandhanbank.com/",app: "https://play.google.com/store/apps/details?id=com.bandhan.mBandhan",contact: "12345");
                Navigator.pushNamed(context, 'axis',arguments: m1);
              }
            },
            child: Con(banklogo[index],bankname[index])),),
      ),
    );
  }
  Widget Con(String imag,String nam)
  {
    return Container (
      margin: EdgeInsets.all(10),
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 2
            )
          ]
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset("$imag",fit: BoxFit.fill,),
          ),
          Divider(
            color: Colors.black,
            height: 0,
            thickness: 3,
          ),
          Container(
            height: 80,
            width: double.infinity,
            child: Row(
              children:  [
                SizedBox(width: 30),
                Text("$nam",style: TextStyle(fontSize: 30,color: Colors.black),),
                Expanded(child: SizedBox()),
                Icon(Icons.arrow_right,size: 30,color: Colors.black,),
                SizedBox(width: 20,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
