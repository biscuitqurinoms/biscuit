import 'package:biscuit2/Component/navigation_button.dart';
import 'package:biscuit2/plus.dart';
import 'package:biscuit2/profile.dart';
import 'package:flutter/material.dart';
import 'Search.dart';
import 'feed_screen.dart';
import 'home.dart';
import 'inbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    FeedScreen(),
    UserSearchPage(), 
    UserHomePage(),
    UserInboxPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap:() {
                      _navigateBottomBar(0);
                    },
                    child: NavigationButton(
                      iconData: Icons.home,
                      label: 'Home',
                      selected: _selectedIndex == 0,
                    ),
                  ),
                  InkWell(
                    onTap:() {
                      _navigateBottomBar(1);
                    },
                    child: NavigationButton(
                      iconData: Icons.notification_add,
                      label: 'Notifications',
                      selected: _selectedIndex == 1,
                  
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.home,
                  color: Colors.transparent,
                  
                ),
                const Text(
                  "",
                )
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap:() {
                      _navigateBottomBar(3);
                    },
                    child: NavigationButton(
                      iconData: Icons.create,
                      label: 'Create',
                      selected: _selectedIndex == 3,
                  
                    ),
                  ),
                  InkWell(
                    onTap:() {
                      _navigateBottomBar(4);
                    },
                    child: NavigationButton(
                      iconData: Icons.account_circle,
                      label: 'Profile',
                      selected: _selectedIndex == 4,
                  
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {_navigateBottomBar(2);},
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
/**
 *  currentIndex: _selectedIndex,
        
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.abc,color: Colors.transparent,),label: 'Create'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_rounded), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
 */