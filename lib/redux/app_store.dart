import 'package:management_states/redux/store.dart';

enum AppAction { increment, decrement }

class AppState {
  final int value;

  AppState({this.value = 0});

  operator +(int newValue) {
    return AppState(value: value + newValue);
  }

  operator -(int value) {
    return AppState(value: value - value);
  }

  @override
  String toString() {
    return '$value';
  }
}

AppState _reducer(AppState state, AppAction action) {
  if (action == AppAction.increment) {
    return state + 1;
  } else {
    return state - 1;
  }
}

final appStore =
    Store<AppAction, AppState>(initialState: AppState(), reducer: _reducer);
