import 'package:acumen/State/splash.dart';
import "package:acumen/State/base.dart"; 
import "package:acumen/global.dart";
import "package:acumen/providers/base.dart";
import "package:shared_preferences/shared_preferences.dart";

class SplashProvider extends BaseProvider {
  @override
  final SplashState state;

  SplashProvider(this.state);

  Future<void> init() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    final firstRun = preferences.getBool(LOCAL_FIRST_RUN_KEY)??true;
 

    // if(firstRun){
      Navigator.of(state.context!)
          .pushNamedAndRemoveUntil(Onboarding.route, (route) => false);
    //   return;
    // }

 
 
    // Navigator.of(state.context!)
    //     .pushNamedAndRemoveUntil(Dashboard.route, (route) => false);
  }
}
