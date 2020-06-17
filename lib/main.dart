import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InstagramFeed(),
    );
  }
}

class InstagramFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Center(
//          child: Text(
//            'Instagram',
//            style: TextStyle(color: Colors.black),
//          ),
//        ),
//        backgroundColor: Colors.white,
//        elevation: 5.0,
//        actions: <Widget>[
//          IconButton(
////            TODO: Change the icon to the correct one.
//            icon: const Icon(Icons.arrow_forward),
//            onPressed: () {print('You pressed the DM');},
//            alignment: Alignment.center,
//            color: Colors.black,
//          ),
//          IconButton(
//            icon: const Icon(Icons.camera_alt),
//            onPressed: () {print('You pressed the Camera');},
//            color: Colors.black,
//          ),
//        ],
//      ),
    );
  }
}





