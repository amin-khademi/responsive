import 'package:flutter/material.dart';
import 'package:responsive__chat/helpers/constants.dart';
import 'package:responsive__chat/pages/responsive/desktop_web.dart';
import 'package:responsive__chat/pages/responsive/mobile_tablet.dart';
import 'package:responsive__chat/pages/responsive/responsive_layout_builder.dart';
import 'package:responsive__chat/state/app_state_notifier.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return AppStateNotifier(
        child: ResponsiveLayoutBuilder(
            mobile: MobileTablet(selectedPage: SelectedPage.bodySelectedPage),
            tablet: MobileTablet(
                selectedPage: SelectedPage.bodySelectedPageSplitScreen),
            desktopWeb: DesktopWeb(
                selectedPage: SelectedPage.bodySelectedPageSplitScreen)));
  }
}
