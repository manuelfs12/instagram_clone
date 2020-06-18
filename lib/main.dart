import 'package:flutter/material.dart';

const _padding10 = 10.0;

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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: _padding10),
          child: IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {
              print('You just tapped the Camera');
            },
            iconSize: 30.0,
          ),
        ),
        title: Image.asset('images/instagram-logo-white.png', fit: BoxFit.cover,),
        centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 6.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: _padding10),
            child: IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                print('You pressed DM');
              },
              iconSize: 30.0,
            ),
          ),
        ],
      ),
      body: Feed(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30.0,
        backgroundColor: Colors.black87,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        elevation: 5.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}

class Feed extends StatelessWidget {
  var appBar = AppBar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Container(
          alignment: Alignment.centerLeft,
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              print('Clicked name -> Go to User Profile');
            },
            child: Text('User1'),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: _padding10),
          child: IconButton(
            icon: Icon(Icons.account_circle),
            iconSize: 40.0,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () {
              print('Clicked avatar -> Go to user profile');
            },
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: _padding10),
            child: IconButton(
              icon: Icon(Icons.linear_scale),
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () {
                print("Open the block user menu");
              },
            ),
          ),
        ],
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  alignment: Alignment.topCenter,
                  height: constraints.maxHeight - appBar.preferredSize.height,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                      child: Column(

                        children: <Widget>[
                          Image.asset('images/instagram-post.png'),
                          Row(
                            children: <Widget>[
//                              Heart Button
                              Padding(
                                padding: const EdgeInsets.only(left: _padding10),
                                child: Container(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                    onPressed: () {
                                      print('You liked a picture!');
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.chat_bubble_outline,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                  onPressed: () {
                                    print('You want to comment');
                                  },
                                ),
                              ),
                              Container(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.send,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                  onPressed: () {
                                    print('You want to comment');
                                  },
                                ),
                              ),
                              Container(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.linear_scale,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                  onPressed: () {
                                    print('You want to comment');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}






