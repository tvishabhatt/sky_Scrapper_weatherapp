import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ThemeModal{
bool isDark;
ThemeModal({required this.isDark});

}
class ThemeProvider extends ChangeNotifier{

  ThemeModal themeModal;
  ThemeProvider({required this.themeModal});

  changeTheme()async{
    themeModal.isDark=!themeModal.isDark;
    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setBool('appTheme', themeModal.isDark);
    notifyListeners();
  }


}