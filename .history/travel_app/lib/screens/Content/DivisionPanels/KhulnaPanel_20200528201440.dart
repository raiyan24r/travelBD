import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';



class PanelKhulna extends StatefulWidget {
  PanelKhulna({Key key}) : super(key: key);

  @override
  _PanelKhulnaState createState() => _PanelKhulnaState();
}

class _PanelKhulnaState extends State<PanelKhulna> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Khulna Map", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}