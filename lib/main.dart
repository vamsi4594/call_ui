import 'package:call_ui/audio_call.dart';
import 'package:call_ui/audio_call_with_image.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'group_call_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SF UI",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
            child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 30,
            ),
            buttonWidgets(context)
          ],
        )),
      ),
    );
  }

  Widget buttonWidgets(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            icon: Icon(
              Icons.video_call,
              size: 40,
            ),
            onPressed: () async {
              if (controller.text.isNotEmpty) {
                // await for camera and mic permissions before pushing video page
                await _handleCameraAndMic(Permission.camera);
                await _handleCameraAndMic(Permission.microphone);
              }
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => GroupCallScreen(
                            channel: controller.text,
                          )));
            }),
        const SizedBox(
          width: 40,
        ),
        IconButton(
            icon: Icon(
              Icons.phone,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AudioCallScreen(
                            channel: controller.text,
                          )));
            }),
      ],
    );
  }

  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }
}
