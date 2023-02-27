import 'package:amazon_uiclone_app/screens/account_screen.dart';
import 'package:amazon_uiclone_app/screens/cart_screen.dart';
import 'package:amazon_uiclone_app/screens/home_screen.dart';
import 'package:amazon_uiclone_app/screens/more_screen.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';

class ScreenLayout extends StatefulWidget {
  static const String routeName = '/actual-home';
  const ScreenLayout({Key? key}) : super(key: key);

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  PageController pageController = PageController();
  int _page = 0;
  // double bottomBarWidth = 42;
  // double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    // HomeScreen(),
    // AccountScreen(),
    // CartScreen(),
    // MoreScreen(),
    const HomeScreen(),
    const AccountScreen(),
    const CartScreen(),
    const MoreScreen(),
  ];

  void updatePage(int page) {
    pageController.jumpToPage(page);
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: pages,
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey[400]!, width: 1),
              ),
            ),
            child: TabBar(
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(color: selectedNavBarColor, width: 4),
                ),
              ),
              onTap: updatePage,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  child: Icon(
                    Icons.home_outlined,
                    color: _page == 0 ? selectedNavBarColor : Colors.black,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: _page == 1 ? selectedNavBarColor : Colors.black,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: _page == 2 ? selectedNavBarColor : Colors.black,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.menu,
                    color: _page == 3 ? selectedNavBarColor : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
