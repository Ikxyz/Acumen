import 'package:acumen/components/dashbaord/bottom_navigation.dart';
import 'package:acumen/components/dashbaord/chat_list.dart';
import 'package:acumen/components/dashbaord/home.dart';
import 'package:acumen/components/dashbaord/near_you_item.dart';
import 'package:acumen/helpers/utils.dart';
import "package:acumen/providers/dashboard.dart";
import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';
import 'package:acumen/widgets/index.dart';

import '../global.dart';

class Dashboard extends StatelessWidget {
  static String route = "/dashboard";

   Dashboard({Key? key}) : super(key: key);
int index =0;
 



  @override
  Widget build(BuildContext context) {
    final _p = Provider.of<DashboardProvider>(context);
    final _s = _p.state;
    return Scaffold(
        key: _s.scaffoldKey,
        bottomNavigationBar: AppBottomNavigationBar(onIndexChange:_p.onIndexChange,),
        body: _s.pages[_s.index],);
  }
}
