import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'testingpanel.dart';

var ctgFinal = ctgDIV.visitedDistricts;
var dhakaFinal = dhakaDIV.visitedDistricts;
var sylhetFinal = sylhetDIV.visitedDistricts;
var barishalFinal = barishalDIV.visitedDistricts;
var khulnaFinal = khulnaDIV.visitedDistricts;
var rajshahiFinal = rajshahiDIV.visitedDistricts;
var mymensinghFinal = mymensinghDIV.visitedDistricts;
var rangurFinal = rangpurDIV.visitedDistricts;

class ResultPage extends StatelessWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0Xffb22020),
        title: Center(
          child: Text("Jajabor",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center),
        ),
      ),
      body: Center(
          child: Text(
        ctgFinal.toString(),
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
