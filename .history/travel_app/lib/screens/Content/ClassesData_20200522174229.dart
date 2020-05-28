

class Division {
  
  String divName;
  int totalDistrics;
  int visitedDistricts;



}


class Districts{

String name;
  bool isVisited;
  Districts(this.name,this.isVisited);


bool updateVisited(var cityname){

cityname.isVisited=!cityname.isVisited;

return cityname.isVisited;
}
}

var dhakacity=new Districts("dhaka",false);
var gazipur=new Districts("gazipur",false);

