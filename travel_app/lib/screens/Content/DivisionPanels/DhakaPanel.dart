import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../SizeConfig.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';



class PanelDhaka extends StatefulWidget {
  PanelDhaka({Key key}) : super(key: key);

  @override
  _PanelDhakaState createState() => _PanelDhakaState();
}

var dhakacity = new Districts("dhaka", false);
var gazipur = new Districts("gazipur", false);
var tangail = new Districts("tangail", false);
var kishoreganj = new Districts("kishoreganj", false);
var narayanganj = new Districts("narayanganj", false);
var manikganj = new Districts("manikganj", false);
var munshiganj = new Districts("munshiganj", false);
var narsingdi = new Districts("narsingdi", false);
var shariatpur = new Districts("shariatpur", false);
var rajbari = new Districts("rajbari", false);
var madaripur= new Districts("madaripur", false);
var gopalganj = new Districts("gopalganj", false);
var faridpur = new Districts("faridpur", false);

class _PanelDhakaState extends State<PanelDhaka> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: h(67) * .95,
        width: h(67) * .95 * .8,
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
            Transform.scale(
              scale:1.2,
                          child: Container(
                child: SvgPicture.asset(
                  'assets/images/dhaka.svg',
                  
                ),
              ),
            ),
             DistrictButton('Dhaka', dhakacity, 0.05, 0.07),
            // DistrictButton('Gazipur', gazipur, 47, 25, null, null),
            // DistrictButton('Tangail', tangail, 25, 17, null, null),
            // DistrictButton('Kishoreganj', kishoreganj, null, 18, 2, null),
            // DistrictButton('Narayanganj', narayanganj, null, 40, 22, null),
            // DistrictButton('Manikganj', manikganj, 20, 37, null, null),
            // DistrictButton('Munshiganj', munshiganj, 47, 48, null, null),
            // DistrictButton('Narsingdi', narsingdi, null, 30, 10, null),
            // DistrictButton('Shariatpur', shariatpur, 46, 56, null, null),
            // DistrictButton('Rajbari', rajbari, 1, 41, null, null),
            // DistrictButton('Madaripur', madaripur, 31, 58, null, null),
            // DistrictButton('Gopalganj', gopalganj, 16, 65, null, null),
            // DistrictButton('Faridpur', faridpur, 15, 48, null, null),
          ],
        ),
      ),
    );
  }
}