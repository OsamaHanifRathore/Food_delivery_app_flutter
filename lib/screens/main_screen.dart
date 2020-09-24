import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/pages/favorite_page.dart';
import 'package:fooddelieveryapp/pages/home_page.dart';
import 'package:fooddelieveryapp/pages/order_page.dart';
import 'package:fooddelieveryapp/pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;

  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();

    pages = [homePage, orderPage, favoritePage, profilePage];

    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Orders"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Person"),
          ),
        ],
      ),
      body: currentPage,
      appBar: currentTabIndex == 1
          ? AppBar(
              title:
                  Text('Your Food Cart', style: TextStyle(color: Colors.black)),
              centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
            )
          : null,
    );
  }
}
