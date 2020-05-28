import 'package:flutter/material.dart';

List<Widget> divListPanel = [
  PanelSylhet(),
  
];

class PanelSylhet extends StatefulWidget {
  PanelSylhet({Key key}) : super(key: key);

  @override
  _PanelSylhetState createState() => _PanelSylhetState();
}

class _PanelSylhetState extends State<PanelSylhet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Sylhet Map"))
    );
  }
}
