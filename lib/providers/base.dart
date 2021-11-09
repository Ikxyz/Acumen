import "dart:async";

import "package:acumen/helpers/error.dart";

import "../State/base.dart";

import "../global.dart";

typedef SetState<T> = T Function();

abstract class BaseProvider<T> with ChangeNotifier {
  BaseState state = BaseState();



  BuildContext? get context => state.context;

  ///* Update  State BuildContext
  ///
  setContext(BuildContext context) {
    state.context = context;
  }

  /// Show Snackbar form any screen
  ///
  showSankBar(String message) {
    if (state.context == null) {
      return;
    }
    ScaffoldMessenger.of(state.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  /// Update isLoading progress state
  ///
  void setLoading(bool? arg) {
    state.isLoading = arg ?? !state.isLoading;
    notifyListeners();
  }

  void setState(SetState<T> fn) {
    Future.sync(fn).then((newState) {
      state = newState as dynamic;
      notifyListeners();
    });
  }

  /// Dispose
  ///
  void dispose() {
    super.dispose();
  }
}
