import 'package:flutter/material.dart';
import 'package:rock_rose/routing/route_names.dart';
import 'package:rock_rose/widgets/navigation_drawer/drawer_item.dart';
import 'package:rock_rose/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Home', Icons.home, HomeRoute),
          DrawerItem('About', Icons.info, AboutRoute),
          DrawerItem('Services', Icons.list, ServicesRoute),
          DrawerItem('Portfolio', Icons.pages, PortfolioRoute),
          DrawerItem('Resources', Icons.attach_money, ResourcesRoute),
          DrawerItem('Contact', Icons.info, ContactRoute),
        ],
      ),
    );
  }
}
