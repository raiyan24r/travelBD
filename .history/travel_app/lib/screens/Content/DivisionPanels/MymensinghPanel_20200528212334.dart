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
          DistrictButton('RANGPUR', rangpurcity, null, null, 110, 200),
        ],
      )),
    );
  }
}