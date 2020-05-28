import 'package:flutter/material.dart';

class Division {
  
  String divName;
  int totalDistrics;
  int visitedDistricts;



}


class Districts{

String name;
  bool isVisited;
  Districts(this.name,this.isVisited);


bool updateVisited(){

isVisited=!isVisited;


}
}

var dhakakcity=new Districts("dhaka",false);

