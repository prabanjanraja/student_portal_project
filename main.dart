<<<<<<< HEAD:main.dart
import 'package:flutter/material.dart';
import 'login_view.dart';
import 'channel_list_view.dart';
import 'create_channel_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var curr_user = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Portal',
      initialRoute: "/login",
      routes: <String, WidgetBuilder>{
        '/login': (context) => LoginView(),
        '/channel_list': (context) => ChannelListView(),
        '/create_channel': (context) => CreateChannelView(),
      },
      theme: ThemeData(
        fontFamily: "Gellix",
        primaryColor: Color(0xff742DDD),
        backgroundColor: Color(0xff742DDD),
        textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color(0xff732cdd),
          selectionHandleColor: Color(0xff732cdd),
          selectionColor: Color(0xffD1BAF4),
        ),
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'package:sendbird_flutter_dashchat/signup.dart';
import 'login_view.dart';
import 'channel_list_view.dart';
import 'create_channel_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Portal',
      initialRoute: "/login",
      routes: <String, WidgetBuilder>{
        '/login': (context) => LoginView(),
        '/channel_list': (context) => ChannelListView(),
        '/create_channel': (context) => CreateChannelView(),
        '/signup': (context) => SignupView(),
      },
      theme: ThemeData(
        fontFamily: "Gellix",
        primaryColor: Color(0xff742DDD),
        backgroundColor: Color(0xff742DDD),
        textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color(0xff732cdd),
          selectionHandleColor: Color(0xff732cdd),
          selectionColor: Color(0xffD1BAF4),
        ),
      ),
    );
  }
}
>>>>>>> 3d0341a3c2c8a7097b7eb2775a106b069ab36473:lib/main.dart
