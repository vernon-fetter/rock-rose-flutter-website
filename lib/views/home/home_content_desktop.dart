import 'package:flutter/material.dart';

import 'package:rock_rose/widgets/business_details/business_details.dart';
import 'package:rock_rose/widgets/call_to_action/call_to_action.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        BusinessDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Get a Quote'),
          ),
        )
      ],
    );
  }
}