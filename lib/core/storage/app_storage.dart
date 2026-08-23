import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
@injectable
class AppStorage {
 final SharedPreferences sharedPreferences;
 AppStorage(this.sharedPreferences);
  Future <bool> skipOnboarding(bool skipOnboarding)async{
    
    return await sharedPreferences.setBool("skipOnboarding", skipOnboarding);
  }
  bool? getSkipOnboarding(){
    return sharedPreferences.getBool("skipOnboarding");
  }
  Future <bool> saveUserName(String userName) async{
    return await sharedPreferences.setString("saveUserName", userName);
  }   

  String? getUserName(){
    return sharedPreferences.getString("saveUserName");
  }
   Future <bool> stayLoggedIn(bool stayLoggedIn)async{

    return await sharedPreferences.setBool("stayLoggedIn", stayLoggedIn);
  }
  bool? getStayLoggedIn(){
    return sharedPreferences.getBool("stayLoggedIn");
  }
}