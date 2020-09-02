import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import 'package:travel_app/SizeConfig.dart';
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
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: h(75) * .95,
        width: h(75) * .95 * .65,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
            ),
            BoxShadow(
              color: Colors.white,
              spreadRadius: -1.0,
              blurRadius: 1.0,
            ),
          ],
        ),
          child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/mymensingh.svg',
          ),
          DistrictButton('MYMENSINGH', mymensinghcity, -.05,0.1),
          
          //DistrictButton('*jei text boshbe', upore classname jeita disi, left theke distance, top, right, bottom),
        ],
      )),
    );
  }
}
