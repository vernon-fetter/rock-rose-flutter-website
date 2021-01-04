import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rock_rose/routing/route_names.dart';
import 'package:rock_rose/views/about/about_view.dart';
import 'package:rock_rose/views/services/services_view.dart';
import 'package:rock_rose/views/home/home_view.dart';
import 'package:rock_rose/views/resources/resources_view.dart';
import 'package:rock_rose/views/portfolio/portfolio_view.dart';
import 'package:rock_rose/views/contact/contact_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings.name);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings.name);
    case ServicesRoute:
      return _getPageRoute(ServicesView(), settings.name);
    case PortfolioRoute:
      return _getPageRoute(PortfolioView(), settings.name);
    case ResourcesRoute:
      return _getPageRoute(ResourcesView(), settings.name);
    case ContactRoute:
      return _getPageRoute(ContactView(), settings.name);
    default:
  }
}

PageRoute _getPageRoute(Widget child, String routeName) {
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            settings: RouteSettings(name: routeName),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}


