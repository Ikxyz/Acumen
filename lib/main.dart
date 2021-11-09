
import 'package:acumen/State/splash.dart'; 
import "package:acumen/State/dashboard.dart";
import "package:acumen/State/login.dart"; 
import 'package:acumen/providers/splash.dart'; 
import "package:acumen/providers/dashboard.dart";
import 'package:acumen/style/theme.dart'; 
import "State/base.dart";
import "State/register.dart";
import "global.dart";
import "providers/base.dart"; 
import "providers/login.dart";
import "providers/register.dart";

import "style/index.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart"; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  final RegisterProvider _registerProvider = RegisterProvider(RegisterState());
  final LoginProvider _loginProvider = LoginProvider(LoginState());

 
  final DashboardProvider _dashboardProvider =
      DashboardProvider(DashboardState());

  final SplashProvider _splashProvider = SplashProvider(SplashState());
 

  @override
  void initState() {
    super.initState();
    // _global.setContext(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
    
        ChangeNotifierProvider(
          create: (_) => _loginProvider,
        ),
        ChangeNotifierProvider(
          create: (_) => _registerProvider,
        ),
         ChangeNotifierProvider(
          create: (_) => _splashProvider,
        ),
          ChangeNotifierProvider(
          create: (_) => _dashboardProvider,
        ),
      ],
      child: MaterialApp(
        title: "Acumen",
        theme:  AppTheme.defaultTheme,
        
        builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: child ?? Offstage()),
        initialRoute: Splash.route,
        routes: {
          Splash.route: (BuildContext context) => const Splash(),
          Onboarding.route: (BuildContext context) => Onboarding(),
          Login.route: (BuildContext context) => const Login(),
          Register.route: (BuildContext context) => const Register(),
         
          Dashboard.route: (BuildContext context) =>  Dashboard(),
          Profile.route: (BuildContext context) => const Profile(),
          Chat.route: (BuildContext context) => const Chat(),
        
        },
      ),
    );
  }
}
