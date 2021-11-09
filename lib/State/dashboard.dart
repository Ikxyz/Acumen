import "package:acumen/State/base.dart";
import 'package:acumen/components/dashbaord/chat_list.dart';
import 'package:acumen/components/dashbaord/home.dart';
import "package:acumen/global.dart";

class DashboardState extends BaseState {
    int index=0;
  List<Widget> pages = [Home(),Offstage(),ChatList(),Offstage()];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}
