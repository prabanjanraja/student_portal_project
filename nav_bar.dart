<<<<<<< HEAD:nav_bar.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sendbird_flutter_dashchat/data/data.dart';
import 'package:sendbird_sdk/sdk/sendbird_sdk_api.dart';
import 'login_view.dart';

import 'dmpage.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final user =
      SendbirdSdk(appId: '93DAA473-5B18-444A-BD77-129154709DE1').currentUser;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // create a dark theme
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedIconTheme: IconThemeData(
        color: Colors.deepPurple,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.black12,
      ),

      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.home),
            padding: EdgeInsets.all(0),
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => Home(),
            //     ),
            //   );
            // },
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          label: "DM",
          icon: IconButton(
            icon: Icon(Icons.chat),
            padding: EdgeInsets.all(0),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DmPage(),
                ),
              );
            },
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.person),
            padding: EdgeInsets.all(0),
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => PersonalDetails(),
            //     ),
            //   );
            // },
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
=======
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sendbird_flutter_dashchat/data/data.dart';
import 'package:sendbird_flutter_dashchat/profilepage.dart';
import 'package:sendbird_flutter_dashchat/search.dart';

import 'dmpage.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // create a dark theme
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedIconTheme: IconThemeData(
        color: Colors.deepPurple,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.black12,
      ),

      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.home),
            padding: EdgeInsets.all(0),
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => Home(),
            //     ),
            //   );
            // },
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          label: "DM",
          icon: IconButton(
            icon: Icon(Icons.chat),
            padding: EdgeInsets.all(0),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DmPage(),
                ),
              );
            },
          ),
        ),
        BottomNavigationBarItem(
          label: "Search",
          icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchView(),
                  ),
                );
              },
              icon: Icon(Icons.search)),
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.person),
            padding: EdgeInsets.all(0),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileView(),
                ),
              );
            },
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
>>>>>>> 3d0341a3c2c8a7097b7eb2775a106b069ab36473:lib/nav_bar.dart
