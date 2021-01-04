import 'package:flutter/material.dart';
import 'package:rock_rose/routing/route_names.dart';

import 'package:rock_rose/widgets/navigation_bar/navbar_item.dart';
import 'package:rock_rose/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(HomeRoute),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('About', AboutRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Services', ServicesRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Portfolio', PortfolioRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Resources', ResourcesRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Contact', ContactRoute),
            ],
          )
        ],
      ),
    );
  }
}