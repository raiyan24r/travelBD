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
        //color: Colors.red[100],
        child: Center(
            child: Stack(
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/chittagong.svg',
            ),
            DistrictButton('Chittagong', chittagongcity, 0.22, 0.05),
            DistrictButton('Brahmanbaria', brahmanbaria, -0.55, -0.78),
            DistrictButton('Comilla', comilla, -0.47, -0.52),
            DistrictButton('Chandpur', chandpur, -0.80, -0.38),
            DistrictButton('Lakshmipur', lakshmipur, -0.75, -0.17),
            DistrictButton('Noakhali', noakhali, -0.37, -0.07),
            DistrictButton('Feni', feni, -0.18, -0.27),
            DistrictButton('Khagrachhari', khagrachhari, 0.35, -0.43),
            DistrictButton('Rangamati', rangamati, 0.55, -0.14),
            DistrictButton('Bandarban', bandarban, 0.70, 0.32),
            DistrictButton("Cox's Bazar", coxsBazar, 0.40, 0.52),
          ],
        )),
      ),
    );
  }
}
