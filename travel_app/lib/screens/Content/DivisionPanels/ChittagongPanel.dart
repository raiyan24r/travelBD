import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';
import "package:travel_app/SizeConfig.dart";

class PanelChittagong extends StatefulWidget {
  PanelChittagong({Key key}) : super(key: key);

  @override
  _PanelChittagongState createState() => _PanelChittagongState();
}

var chittagongcity = new Districts("chittagong", false);
var brahmanbaria = new Districts("brahmanbaria", false);
var comilla = new Districts("comilla", false);
var chandpur = new Districts("chandpur", false);
var lakshmipur = new Districts("lakshmipur", false);
var noakhali = new Districts("noakhali", false);
var feni = new Districts("feni", false);
var khagrachhari = new Districts("khagrachhari", false);
var rangamati = new Districts("rangamati", false);
var bandarban = new Districts("bandarban", false);
var coxsBazar = new Districts("coxsBazar", false);

class _PanelChittagongState extends State<PanelChittagong> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/chittagong.svg',
            height: h(100),
            width: w(100),
          ),
          DistrictButton('Chittagong', chittagongcity, null, null, 29, 35),
          DistrictButton('Brahmanbaria', brahmanbaria, 19, 8, null, null),
          DistrictButton('Comilla', comilla, null, null, 58, 58),
          DistrictButton('Chandpur', chandpur, null, null, 67,51),
          DistrictButton('Lakshmipur', lakshmipur, null, null, 62, 45),
          DistrictButton('Noakhali', noakhali, null, null, 51, 39),
          DistrictButton('Feni', feni, null, null, 45, 46),
          DistrictButton('Khagrachhari', khagrachhari, null, null, 25, 51),
          DistrictButton('Rangamati', rangamati, null, null, 18, 43),
          DistrictButton('Bandarban', bandarban, null, null, 15, 28),
          DistrictButton("Cox's Bazar", coxsBazar, null, null, 25, 20),
        ],
      )),
    );
  }
}
