
import 'package:call_ui/size_config.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'dail_screen_body.dart';


class DialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgoundColor,
      body: Body(),
    );
  }
}