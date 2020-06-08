


class Division {
  
  String divName;
  int totalDistrics;
  int visitedDistricts=0;
 



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






