
import 'package:call_ui/size_config.dart';
import 'package:flutter/material.dart';

import 'audio_call_body.dart';


class AudioCallWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}