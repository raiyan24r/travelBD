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
      child: Center(child: Text("Barishal Map"))
    );
  }
}

class name extends StatefulWidget {
  name({Key key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: child,
    );
  }
}
