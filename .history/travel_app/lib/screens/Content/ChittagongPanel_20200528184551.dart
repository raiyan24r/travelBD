import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ClassesData.dart';
import 'CustomDistrictButton.dart';


class PanelChittagong extends StatefulWidget {
  PanelChittagong({Key key}) : super(key: key);

  @override
  _PanelChittagongState createState() => _PanelChittagongState();
}

class _PanelChittagongState extends State<PanelChittagong> {

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/chittagong.svg',
          ),
          DistrictButton('sylhet', chittagongcity, 175, 230, null, null),

        ],
      )),
    );
  }
}