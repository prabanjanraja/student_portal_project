import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child: Icon(
              Icons.account_circle,
              size: 100,
              color: Colors.blue,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Name',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Phone',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'BIO',
            ),
          ),
        ],
      ),
    );
  }
}
