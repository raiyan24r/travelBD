import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';

class PanelMymensingh extends StatefulWidget {
  PanelMymensingh({Key key}) : super(key: key);

  @override
  _PanelMymensinghState createState() => _PanelMymensinghState();
}

var mymensinghcity = new Districts("mymensingh", false);

//      example : var *classname* = new Districts("*districtname", false);

class _PanelMymensinghState extends State<PanelMymensingh> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/mymensingh.svg',
          ),
          //DistrictButton('MYMENSINGH', mymensinghcity, null, null, 110, 200),
          
          //DistrictButton('*jei text boshbe', upore classname jeita disi, left theke distance, top, right, bottom),
        ],
      )),
    );
  }
}
