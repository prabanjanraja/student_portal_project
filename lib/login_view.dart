import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sendbird_flutter_dashchat/data/data.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';

class LoginView extends StatefulWidget {
  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  final sendbird = SendbirdSdk(appId: '93DAA473-5B18-444A-BD77-129154709DE1');

  final _email = TextEditingController();
  final _userIdController = TextEditingController();
  bool _enableSignInButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body(context),
    );
  }

  Widget navigationBar() {
    return AppBar(
      toolbarHeight: 65,
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: true,
      title: Text('Student Portal', style: TextStyle(color: Colors.black)),
      actions: [],
      centerTitle: true,
    );
  }

  Widget body(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 100),
        child: ListView(
          children: [
            Container(
                width: 50,
                height: 50,
                child: Image(
                  image: AssetImage('assets/logoSendbirdFull@3x.png'),
                  fit: BoxFit.scaleDown,
                )),
            SizedBox(height: 20),
            Text('Student Portal',
                style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 40),
            TextField(
              controller: _email,
              onChanged: (value) {
                setState(() {
                  _enableSignInButton = _shouldEnableSignInButton();
                });
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email Address',
                  hintText: 'Enter your email address',
                  filled: true,
                  fillColor: Colors.grey[200],
                  suffixIcon: IconButton(
                    onPressed: () {
                      _email.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              controller: _userIdController,
              onChanged: (value) {
                setState(() {
                  _enableSignInButton = _shouldEnableSignInButton();
                });
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Email Address',
                hintText: 'Enter your email address',
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: IconButton(
                  onPressed: () {
                    _userIdController.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
            SizedBox(height: 30),
            FractionallySizedBox(
              widthFactor: 1,
              child: _signInButton(context, _enableSignInButton),
            ),
            // create a button for signup
            FractionallySizedBox(
              widthFactor: 1,
              child: _signUpButton(context),
            )
          ],
        ));
  }

  bool _shouldEnableSignInButton() {
    if (_email.text.isEmpty) {
      return false;
    }
    if (_userIdController.text.isEmpty) {
      return false;
    }
    return true;
  }

  Widget _signInButton(BuildContext context, bool enabled) {
    if (enabled == false) {
      // Disable the sign in button if required data not entered
      return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            foregroundColor:
                MaterialStateProperty.all<Color>(Colors.grey[300])),
        onPressed: () {},
        child: Text(
          "Sign In",
          style: TextStyle(fontSize: 20.0),
        ),
      );
    }
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff742DDD)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
      onPressed: () {
        // Login with Sendbird
        connect(_email.text, _userIdController.text).then((user) {
          Navigator.pushNamed(context, '/channel_list');
        }).catchError((error) {
          print('login_view: _signInButton: ERROR: $error');
        });
      },
      child: Text(
        "Sign In",
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  Future<User> connect(String appId, String userId) async {
    // Init Sendbird SDK and connect with current user id
    try {
      final user = await sendbird.connect(userId);
      curr_user = user;
      return user;
    } catch (e) {
      print('login_view: connect: ERROR: $e');
      throw e;
    }
  }

  _signUpButton(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.grey[300])),
      onPressed: () {
        Navigator.pushNamed(context, '/signup');
      },
      child: Text(
        "Sign Up",
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
