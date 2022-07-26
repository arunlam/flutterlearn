import 'package:bookticket/screens/chat_screen.dart';
import 'package:bookticket/screens/home_screen.dart';
import 'package:bookticket/screens/setting_screen.dart';
import 'package:bookticket/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedBottomItem = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const TicketScreen(),
    const ChatScreen(),
    const SettingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedBottomItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
      ),
      body: Center(child: _widgetOptions[_selectedBottomItem]),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedBottomItem,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: 'Ticket',
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_chat_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_chat_filled),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_settings_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_settings_filled),
              label: 'Setting',
            ),
          ]),
    );
  }
}
