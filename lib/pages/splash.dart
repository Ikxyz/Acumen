import 'package:acumen/helpers/utils.dart';
import 'package:acumen/providers/splash.dart';

import "../global.dart";
import 'onboarding.dart';
import "../style/index.dart";

class Splash extends StatelessWidget {
  static String route = "/";

  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SplashProvider>(context);

    provider.setContext(context);

    Future.delayed(const Duration(seconds: 2), () {
      Future.microtask((provider.init));
    });

    final width = getWidth(context);
    final height = getHeight(context);

    return Scaffold(
       
        body: Stack(children: [
          
        ],) );
  }
}
