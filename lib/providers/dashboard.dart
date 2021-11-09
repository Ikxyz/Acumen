import "package:acumen/State/dashboard.dart";
import "package:acumen/providers/base.dart";

import "../global.dart";

class DashboardProvider extends BaseProvider {
  @override
  final DashboardState state;

  DashboardProvider(this.state);

  void onIndexChange(int index) {
    print(index);
    setState(() {
      state.index = index;
      return state;
    });
  }
}
