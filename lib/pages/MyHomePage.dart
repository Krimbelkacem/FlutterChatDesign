import 'package:flutter/material.dart';
import 'favorite_contacts.dart'; // Import your components
import 'chat_list.dart';
import 'Header.dart';
import 'Login.dart';
import 'calls.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // To track the selected tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildTabContent(_currentIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/image2.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'User Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings), // Add icon
              title: Text('Account Settings'),
              onTap: () {
                Navigator.pop(context);
                // Handle Account Settings tap
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip), // Add icon
              title: Text('Privacy'),
              onTap: () {
                Navigator.pop(context);
                // Handle Privacy tap
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app), // Add icon
              title: Text('Disconnect'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
            // Add more drawer items as needed
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'calls',
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(int index) {
    switch (index) {
      case 0:
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Header(),
                  // Add other widgets for "Messages" tab here
                ],
              ),
              FavoriteContacts(),
              ChatList(),
            ],
          ),
        );
      case 1:
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Header(),
                  // Add other widgets for "Messages" tab here
                ],
              ),
              JournalList(),
            ],
          ),
        );

      default:
        return SizedBox.shrink();
    }
  }
}
