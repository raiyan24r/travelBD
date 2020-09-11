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
var sherpur = new Districts("sherpur", false);
var jamalpur = new Districts("jamalpur", false);
var netrokona = new Districts("netrokona", false);
//var xyzcity = new Districts("xyz", false);
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
              DistrictButton('MYMENSINGH', mymensinghcity, -.05, 0.1),
              DistrictButton('SHERPUR', sherpur, -0.5, -0.3),
              DistrictButton('Jamalpur', jamalpur, -0.9, -0.1),
              DistrictButton('Netrokona', netrokona, 0.6, -0.05),
              // DistrictButton('pqr', pqrcity, 1, -1),
              //DistrictButton('*jei text boshbe', upore classname jeita disi, left theke distance, top, right, bottom),
            ],
          )),
    );
  }
}
