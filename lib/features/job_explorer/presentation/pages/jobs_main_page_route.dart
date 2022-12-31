import 'package:altow_greenhouse_jobs/core/global/colors.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/pages/main_page_route.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/pages/messages_page_route.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/pages/setting_page_route.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/providers/bottom_navigation_bar_provider/navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class JobsMainPage extends ConsumerWidget {
  PersistentTabController? _tabController;

  static List<Widget> _pages = <Widget>[
    MainPageRoute(),
    MessagesPageRoute(),
    MessagesPageRoute(),
    SettingsPageRoute(),
  ];

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: active_color_primary,
        activeColorSecondary: active_color_secondary,
        inactiveColorPrimary: inactive_color_primary,
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.search),
          title: "Search",
          activeColorPrimary: active_color_primary,
          activeColorSecondary: active_color_secondary,
          inactiveColorPrimary: inactive_color_primary),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.chat),
          title: "Message",
          activeColorPrimary: active_color_primary,
          activeColorSecondary: active_color_secondary,
          inactiveColorPrimary: inactive_color_primary),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.account_circle_outlined),
          title: "Account",
          activeColorPrimary: active_color_primary,
          activeColorSecondary: active_color_secondary,
          inactiveColorPrimary: inactive_color_primary),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _tabIndex = ref.watch(navigationBarProvider).tabIndex;
    _tabController = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      screens: _pages,
      items: _navBarItems(),
      confineInSafeArea: true,
      backgroundColor: app_bar_background_color,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(
          milliseconds: 200,
        ),
      ),
      navBarStyle: NavBarStyle.style1,
      onItemSelected: (value) {
        ref
            .read(navigationBarProvider.notifier)
            .changeNavigationTab(newTabIndex: value);
      },
    );
  }
}
