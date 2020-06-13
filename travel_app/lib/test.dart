// import 'package:travel_app/screens/Content/ClassesData.dart';
// import 'package:travel_app/screens/Content/DivisionPanels/SlidingPanelDivisions.dart';

// import 'SizeConfig.dart';
// import 'main.dart';
// import 'package:flutter/material.dart';

// import 'package:travel_app/main.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:sliding_up_panel/sliding_up_panel.dart';



// //PanelController pc = new PanelController();
// class Test extends StatefulWidget {
//   const Test({Key key}) : super(key: key);

//   @override
//   _TestState createState() => _TestState();
// }
// void choiceAction(String choice) {
//   if (choice == Constants.Settings) {
//     print('Settings');
//   } else if (choice == Constants.Subscribe) {
//     print('Subscribe');
//   } else if (choice == Constants.SignOut) {
//     print('SignOut');
//   }
// }
// int divIndex = 2;



// class _TestState extends State<Test> {
//   void updateIndex(int index) {
//     setState(() {
//       divIndex = index;
//       _pcx.open();
//     });
//   }
//   PanelController _pcx = new PanelController();
//   var ctgDiv = Division();
// var dhakaDiv = Division();
// var sylhetDiv = Division();
// var khulnaDiv = Division();
// var rangpurDiv = Division();
// var rajshahiDiv = Division();
// var mymensinghDiv = Division();
// var barishalDiv = Division();

//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return WillPopScope(
//       onWillPop: () async => false,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Color(0Xffb22020),
//           actions: <Widget>[
//             PopupMenuButton<String>(
//               onSelected: choiceAction,
//               itemBuilder: (BuildContext context) {
//                 return Constants.choices.map((String choice) {
//                   return PopupMenuItem<String>(
//                     value: choice,
//                     child: Text(choice),
//                   );
//                 }).toList();
//               },
//             ),
//           ],
//           title: Center(
//             child: const Text('Travel',
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//                 textAlign: TextAlign.center),
//           ),
//         ),
//         body: mainBody(ctgDiv, barishalDiv),
//         drawer: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: const <Widget>[
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Color(0Xffb22020),
//                 ),
//                 child: Text(
//                   'your name\n40% complete',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.message),
//                 title: Text('Messages'),
//               ),
//               ListTile(
//                 leading: Icon(Icons.account_circle),
//                 title: Text('Profile'),
//               ),
//               ListTile(
//                 leading: Icon(Icons.settings),
//                 title: Text('Settings'),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           color: Color(0xfffff2f2), //fce8e8  //fff2f2
//           elevation: 50,
//           shape: CircularNotchedRectangle(),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.home),
//                 color: Color(0Xffb22020),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 icon: Icon(Icons.directions_boat),
//                 color: Color(0Xffb22020),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 icon: Icon(Icons.wrap_text),
//                 color: Color(0Xffb22020),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 icon: Icon(Icons.location_on),
//                 color: Color(0Xffb22020),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Color(0Xffb22020),
//           child: Icon(
//             Icons.add,
//             color: Colors.white,
//           ),
//           onPressed: () {},
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       ),
//     );
//   }

//   Center mainBody(Division ctgDiv, Division barishalDiv) {
//     return Center(
//       child: Container(
//         height: h(100),
//         color: Colors.green,
//         child: Stack(children: <Widget>[
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: SvgPicture.asset(
//                 'assets/images/BDMapv2.svg',
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment(1.05, 0.4),
//             child: FlatButton(
//               onPressed: () => updateIndex(1),
//               child: Container(
//                 child: Wrap(direction: Axis.vertical, children: <Widget>[
//                   Text(
//                     "CHITTAGONG",
//                     style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.blue[900],
//                         fontWeight: FontWeight.w900),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 30),
//                     child: Container(
//                         decoration: BoxDecoration(
//                             border: Border.all(
//                               color: Colors.blue[900],
//                             ),
//                             color: Colors.blue,
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(20))),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 9, vertical: 2),
//                           child: Text(
//                             "${ctgDiv.visitedDistricts}/8",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )),
//                   )
//                 ]),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment(0.05, 0.45),
//             child: FlatButton(
//               onPressed: () => updateIndex(2),
//               child: Container(
//                 child: Wrap(direction: Axis.vertical, children: <Widget>[
//                   Text(
//                     "BARISHAL",
//                     style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.orange[900],
//                         fontWeight: FontWeight.w900),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.black,
//                         ),
//                         color: Colors.orange[900],
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(20),
//                         ),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 9, vertical: 2),
//                         child: Text(
//                           "${barishalDiv.visitedDistricts}/8",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   )
//                 ]),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment(-0.55, 0.4),
//             child: FlatButton(
//               onPressed: () => {updateIndex(4)},
//               child: Container(
//                 child: Wrap(direction: Axis.vertical, children: <Widget>[
//                   Text(
//                     "KHULNA",
//                     style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.green[900],
//                         fontWeight: FontWeight.w900),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     child: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.black,
//                       ),
//                       color: Colors.green[900],
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 9, vertical: 2),
//                       child: Text(
//                         "${khulnaDiv.visitedDistricts}/8",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     ),
//                   )
//                 ]),
//               ),
//             ),
//           ),

// Align(
//             alignment: Alignment(0.7, -0.4),
//             child: FlatButton(
//               onPressed: () => {updateIndex(0)},
//               child: Container(
//                 child: Wrap(direction: Axis.vertical, children: <Widget>[
//                   Text(
//                     "SYLHET",
//                     style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.deepOrange[900],
//                         fontWeight: FontWeight.w900),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     child: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.black,
//                       ),
//                       color: Colors.orange[900],
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 9, vertical: 2),
//                       child: Text(
//                         "${sylhetDiv.visitedDistricts}/4",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   )
//                 ]),
//               ),
//             ),
//           ),

//           SlidingUpPanel(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(24.0),
//                 topRight: Radius.circular(24.0),
//               ),
//               backdropEnabled: true,
//               minHeight: h(2),
//               maxHeight: h(70),
//               controller: _pcx,
//               panel: Center(
//                 child: divListPanel[divIndex],
//               ),
//             ),
//         ]),
//       ),
//     );
//   }
// }


