import 'package:flutter/foundation.dart';

class ProviderDivision with ChangeNotifier {
  String divName;

  int ctgVisitedDistricts = 0;
  int barishalVisitedDistricts = 0;
  int khulnaVisitedDistricts = 0;
  int dhakaVisitedDistricts = 0;
  int mymensinghVisitedDistricts = 0;
  int sylhetVisitedDistricts = 0;
  int rajshahiVisitedDistricts = 0;
  int rangpurVisitedDistricts = 0;
  

  void buttonPress(int index, bool checkPrev) {
    switch (index) {
      case 2:
        {
          if (checkPrev) {
            ctgVisitedDistricts = ctgVisitedDistricts + 1;
          } else {
            ctgVisitedDistricts = ctgVisitedDistricts - 1;
          }
        }
        break;

      case 4:
        {
          if (checkPrev) {
            khulnaVisitedDistricts = khulnaVisitedDistricts + 1;
          } else {
            khulnaVisitedDistricts = khulnaVisitedDistricts - 1;
          }
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    notifyListeners();
  }
}

class Division {
  String divName;
int totalDistricts;
  int visitedDistricts = 0;
  Division(this.totalDistricts);

}

class Districts {
  String name;
  bool isVisited;
  Districts(this.name, this.isVisited);

  bool updateVisited(var cityname) {
    cityname.isVisited = !cityname.isVisited;

    return cityname.isVisited;
  }
}
