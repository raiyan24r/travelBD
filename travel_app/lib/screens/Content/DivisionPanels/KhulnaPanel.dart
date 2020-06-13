import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/SizeConfig.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';

class PanelKhulna extends StatefulWidget {
  PanelKhulna({Key key}) : super(key: key);

  @override
  _PanelKhulnaState createState() => _PanelKhulnaState();
}

var khulnacity = new Districts("khulna", false);
var bagerhat = new Districts("bagerhat", false);
var chuadanga = new Districts("chuadanga", false);
var jessore = new Districts("jessore", false);
var jhenaidah = new Districts("jhenaidah", false);
var kushtia = new Districts("kushtia", false);
var magura = new Districts("magura", false);
var meherpur = new Districts("meherpur", false);
var narail = new Districts("narail", false);
var satkhira = new Districts("satkhira", false);

class _PanelKhulnaState extends State<PanelKhulna> {
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
              'assets/images/khulna.svg',
            ),
              DistrictButton('KHULNA', khulnacity, .26,.25),
             DistrictButton('Bagerhat', bagerhat, .76,.25),
             DistrictButton('Meherpur', meherpur, -0.7,-.72),
             DistrictButton('Chuadanga', chuadanga, -0.5,-.52),
             DistrictButton('Jessore',jessore , -0.08,-.12),
             
             DistrictButton('Kushtia', kushtia, -0.1,-.75),
            DistrictButton('Magura', magura,.3,-.4),
            DistrictButton('Jhenaidah', jhenaidah,-0.1,-.44),
             DistrictButton('Narail', narail,.45,-0.15),
             DistrictButton('Satkhira', satkhira, -.16,.35),

          ],
        )),
      ),
    );
  }
}
