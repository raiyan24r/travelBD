import 'dart:ui';
import '../../SizeConfig.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'testingpanel.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    var ctgFinal = ctgDIV.visitedDistricts;
    var dhakaFinal = dhakaDIV.visitedDistricts;
    var sylhetFinal = sylhetDIV.visitedDistricts;
    var barishalFinal = barishalDIV.visitedDistricts;
    var khulnaFinal = khulnaDIV.visitedDistricts;
    var rajshahiFinal = rajshahiDIV.visitedDistricts;
    var mymensinghFinal = mymensinghDIV.visitedDistricts;
    var rangurFinal = rangpurDIV.visitedDistricts;

    var ctgTotal = ctgDIV.totalDistricts;
    var dhakaTotal = dhakaDIV.totalDistricts;
    var barishalTotal = barishalDIV.totalDistricts;
    var sylhetTotal = sylhetDIV.totalDistricts;
    var khulnaTotal = khulnaDIV.totalDistricts;
    var mymensignhTotal = mymensinghDIV.totalDistricts;
    var rangpurTotal = rangpurDIV.totalDistricts;
    var rajshahiTotal = rajshahiDIV.totalDistricts;

    var totalPercentage = (((dhakaFinal +
                sylhetFinal +
                barishalFinal +
                khulnaFinal +
                rajshahiFinal +
                mymensinghFinal +
                rangurFinal +
                ctgFinal) /
            64) *
        100);

    var dhakafinalPercentage =
        ((dhakaFinal / dhakaTotal) * 100).toStringAsFixed(2);
    var barishalPercentage =
        ((barishalFinal / barishalTotal) * 100).toStringAsFixed(2);
    var sylhetPercentage =
        ((sylhetFinal / sylhetTotal) * 100).toStringAsFixed(2);
    var ctgPercentage = ((ctgFinal / ctgTotal) * 100).toStringAsFixed(2);
    var rangpurPercentage =
        ((rangurFinal / rangpurTotal) * 100).toStringAsFixed(2);
    var mymensinghPercentage =
        ((mymensinghFinal / mymensignhTotal) * 100).toStringAsFixed(2);
    var rajshahiPercentage =
        ((rajshahiFinal / rajshahiTotal) * 100).toStringAsFixed(2);
    var khulnaPercentage =
        ((khulnaFinal / khulnaTotal) * 100).toStringAsFixed(2);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0Xffb22020),
          title: Text("Jajabor",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center),
        ),
        body: Container(
          child: Column(children: <Widget>[
            Expanded(
              child: Container(
                //         color: Colors.amber,
                child: Row(children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: <Widget>[
                              Text(
                                "DHAKA",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: h(100) * 0.02,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    color: Colors.pink[800],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 1),
                                    child: Text(
                                      "$dhakafinalPercentage%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: h(100) * 0.02,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                            ]),
                        Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: <Widget>[
                              Text(
                                "BARISHAL",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: h(100) * 0.02,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    color: Colors.deepOrange[800],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 1),
                                    child: Text(
                                      "$barishalPercentage%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: h(100) * 0.02,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                            ]),
                        
                        Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: <Widget>[
                              Text(
                                "CHITTAGONG",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: h(100) * 0.02,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    color: Colors.blue[800],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 1),
                                    child: Text(
                                      "$ctgPercentage%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: h(100) * 0.02,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                            ]),
                        Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: <Widget>[
                              Text(
                                "RANGPUR",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: h(100) * 0.02,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    color: Colors.lime[900],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 1),
                                    child: Text(
                                      "$rangpurPercentage%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: h(100) * 0.02,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                            ]),
                        Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: <Widget>[
                              Text(
                                "MYMENSINGH",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: h(100) * 0.02,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    color: Colors.red[800],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 1),
                                    child: Text(
                                      "$mymensinghPercentage%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: h(100) * 0.02,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                            ]),
                            
                        Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: <Widget>[
                              Text(
                                "RAJSHAHI",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: h(100) * 0.02,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    color: Colors.lightBlue[900],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 1),
                                    child: Text(
                                      "$rajshahiPercentage%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: h(100) * 0.02,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                            ]),
                        Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: <Widget>[
                              Text(
                                "KHULNA",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: h(100) * 0.02,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue[900],
                                    ),
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 1),
                                    child: Text(
                                      "$khulnaPercentage%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: h(100) * 0.02,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                            ]),
                            Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: <Widget>[
                              Text(
                                "SYLHET",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: h(100) * 0.02,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    color:Colors.deepOrange[800],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 1),
                                    child: Text(
                                      "$sylhetPercentage%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: h(100) * 0.02,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right:10),
                      child: Container(
                        //     color: Colors.green,
                        child: SvgPicture.asset(
                          'assets/images/BDMapv2.svg',
                          // width: w(95),
                          // height: w(95) * 1.30,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            Container(
              //  color: Colors.red,
              child: Column(children: [
                Text(
                  "You have visited",
                  style: GoogleFonts.roboto(
                    fontSize: 30,
                    color: Colors.black87,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: RoundedProgressBar(
                    milliseconds: 100,
                    childCenter: Text(
                      "$totalPercentage%",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    percent: totalPercentage,
                    theme: RoundedProgressBarTheme.green,
                  ),
                ),
                SizedBox(height: 10),
              ]),
            ),
          ]),
        ));
  }
}
