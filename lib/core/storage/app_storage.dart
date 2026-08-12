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
}