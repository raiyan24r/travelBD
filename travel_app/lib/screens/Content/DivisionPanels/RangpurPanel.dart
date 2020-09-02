import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import 'package:travel_app/SizeConfig.dart';
import '../CustomDistrictButton.dart';


class PanelRangpur extends StatefulWidget {
  PanelRangpur({Key key}) : super(key: key);

  @override
  _PanelRangpurState createState() => _PanelRangpurState();
}
var rangpurcity = new Districts("rangpur", false);
class _PanelRangpurState extends State<PanelRangpur> {
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
            'assets/images/rangpur.svg',
          ),
          DistrictButton('RANGPUR', rangpurcity, 0.3,0.1),
        ],
      )),
    );
  }
}