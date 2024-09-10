import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:zeniverse/screens/home/home.dart';

class RootNav extends StatefulWidget {
  const RootNav({super.key});

  @override
  State<RootNav> createState() => _RootNavState();
}

class _RootNavState extends State<RootNav> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 0;

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const Home();
      case 1:
      case 2:
      case 3:
      default:
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.transparent,
          child: Center(
            child: Text(
              'Page $index',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: _buildPage(_currentPage),
        backgroundColor: Colors.deepPurpleAccent,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.black,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.ease,
          index: _currentPage,
          height: 60,
          onTap: (index) {
            setState(() => _currentPage = index);
          },
          items: [
            Icon(
              Icons.home,
              color: _currentPage == 0 ? Colors.deepPurpleAccent : Colors.white,
            ),
            Icon(
              Icons.insert_chart,
              color: _currentPage == 1 ? Colors.deepPurpleAccent : Colors.white,
            ),
            Icon(
              Icons.settings,
              color: _currentPage == 2 ? Colors.deepPurpleAccent : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
