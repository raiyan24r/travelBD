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
         case 3:
        {
          if (checkPrev) {
           barishalVisitedDistricts = barishalVisitedDistricts + 1;
          } else {
            barishalVisitedDistricts = barishalVisitedDistricts - 1;
          }
        }
        break;
         case 1:
        {
          if (checkPrev) {
           dhakaVisitedDistricts = dhakaVisitedDistricts + 1;
          } else {
            dhakaVisitedDistricts = dhakaVisitedDistricts - 1;
          }
        }
        break;
        case 7:
        {
          if (checkPrev) {
           mymensinghVisitedDistricts = mymensinghVisitedDistricts + 1;
          } else {
            mymensinghVisitedDistricts = mymensinghVisitedDistricts - 1;
          }
        }
        break;
        case 6:
        {
          if (checkPrev) {
           rangpurVisitedDistricts = rangpurVisitedDistricts + 1;
          } else {
            rangpurVisitedDistricts = rangpurVisitedDistricts - 1;
          }
        }
        break;
        case 5:
        {
          if (checkPrev) {
           rajshahiVisitedDistricts = rajshahiVisitedDistricts + 1;
          } else {
           rajshahiVisitedDistricts = rajshahiVisitedDistricts - 1;
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
