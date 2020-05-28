import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';


class PanelBarishal extends StatefulWidget {
  PanelBarishal({Key key}) : super(key: key);

  @override
  _PanelBarishalState createState() => _PanelBarishalState();
}

var barishalcity = new Districts("barishal", false);

class _PanelBarishalState extends State<PanelBarishal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Barishal Map", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
