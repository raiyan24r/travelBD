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
var dinajpur = new Districts("dinajpur", false);
var thakurgaon = new Districts("thakurgaon", false);
var panchagarh = new Districts("panchagarh", false);
var nilfamari = new Districts("nilfamari", false);
var lalmonirhat = new Districts("lalmonirhat", false);
var kurigram = new Districts("kurigram", false);
var gaibandha = new Districts("gaibandha", false);

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
              DistrictButton('RANGPUR', rangpurcity, 0.3, 0.1),
              DistrictButton('DINAJPUR', dinajpur, -0.3, 0.05),
              DistrictButton('THAKURGAON', thakurgaon, -0.9, -0.2),
              DistrictButton('PANCHAGARH', panchagarh, -0.5, -0.5),
              DistrictButton('NILFAMARI', nilfamari, -0.05, -0.3),
              DistrictButton('LALMONIRHAT', lalmonirhat, 0.5, -0.185),
              DistrictButton('KURIGRAM', kurigram, 0.85, -0.05),
              DistrictButton('GAIBANDHA', gaibandha, 0.7, 0.3),
            ],
          )),
    );
  }
}
