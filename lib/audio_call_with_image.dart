
import 'package:call_ui/size_config.dart';
import 'package:flutter/material.dart';

import 'audio_call_body.dart';


class AudioCallWithImage extends StatefulWidget {
  final String channel;

  const AudioCallWithImage({Key key, this.channel}) : super(key: key);
  @override
  _AudioCallWithImageState createState() => _AudioCallWithImageState();
}

class _AudioCallWithImageState extends State<AudioCallWithImage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}