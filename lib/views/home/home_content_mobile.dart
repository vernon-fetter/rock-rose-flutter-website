import 'package:flutter/material.dart';

import 'package:rock_rose/widgets/business_details/business_details.dart';
import 'package:rock_rose/widgets/call_to_action/call_to_action.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        BusinessDetails(),
        SizedBox(height: 100,),
        CallToAction('Get a Quote'),
      ],
    );
  }
}