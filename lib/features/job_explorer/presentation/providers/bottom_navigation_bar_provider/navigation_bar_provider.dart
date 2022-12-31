import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'navigation_bar_state.dart';

final navigationBarProvider =
    StateNotifierProvider<NavigationBarProvider, NavigationBarState>((ref) {
  return NavigationBarProvider();
});

class NavigationBarProvider extends StateNotifier<NavigationBarState> {
  NavigationBarProvider() : super(NavigationBarState.initial());

  void changeNavigationTab({required int newTabIndex}) {
    state = NavigationBarState.changeTab(selectedTab: newTabIndex);
  }
}
