import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:rock_rose/views/home/home_content_desktop.dart';
import 'package:rock_rose/views/home/home_content_mobile.dart';
import 'package:rock_rose/widgets/centered_view/centered_view.dart';
import 'package:rock_rose/widgets/navigation_bar/navigation_bar.dart';
import 'package:rock_rose/widgets/navigation_drawer/navigation_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}
