import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';




class PanelRajshahi extends StatefulWidget {
  PanelRajshahi({Key key}) : super(key: key);

  @override
  _PanelRajshahiState createState() => _PanelRajshahiState();
}



class _PanelRajshahiState extends State<PanelRajshahi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Rajshahi Map", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}