import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/SizeConfig.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';

class PanelRajshahi extends StatefulWidget {
  PanelRajshahi({Key key}) : super(key: key);

  @override
  _PanelRajshahiState createState() => _PanelRajshahiState();
}

var rajshahicity = new Districts("rajshahi", false);

class _PanelRajshahiState extends State<PanelRajshahi> {
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
          child: Center(
              child: Stack(
            children: <Widget>[
              SvgPicture.asset(
                'assets/images/rajshahi.svg',
              ),
              DistrictButton('RAJSHAHI', rajshahicity,-.3,.1),
            ],
          )),
        ));
  }
}
