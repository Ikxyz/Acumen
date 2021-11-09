import 'package:acumen/style/resources.dart';

import '../../global.dart';

typedef OnIndexChange = void Function(int i);

class AppBottomNavigationBar extends StatelessWidget {
  final OnIndexChange onIndexChange;
  const AppBottomNavigationBar({Key? key, required this.onIndexChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(onTap: onIndexChange,showSelectedLabels: true,showUnselectedLabels: true, items: [
      BottomNavigationBarItem(

          label: "Home", icon: ImageIcon(AssetImage(AppIcons.home))),
      BottomNavigationBarItem(
          label: "Moments", icon: ImageIcon(AssetImage(AppIcons.users))),
      BottomNavigationBarItem(
          label: "Chats", icon: ImageIcon(AssetImage(AppIcons.send))),
      BottomNavigationBarItem(
          label: "Profile", icon: ImageIcon(AssetImage(AppIcons.profile))),
    ]);
  }
}
