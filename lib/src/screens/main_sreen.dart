import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/donations_page.dart';
import '../pages/profile_page.dart';
import '../pages/favourite_page.dart';

class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  int currentTabIndex = 0;
  List<Widget> pages;
  HomePage homePage;
  DonationPage donationPage;
  FavouritePage favouritePage;
  ProfilePage profilePage;

  Widget currentPage;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    donationPage = DonationPage();
    favouritePage = FavouritePage();
    profilePage = ProfilePage();
    pages = [homePage, donationPage, favouritePage, profilePage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
            //if (index == 1) {
              //JJSJJSJSJSJSJS
            //}        
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Donations")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favourite")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile")
          )
        ]
      ),
      body: currentPage,
    );
  }
}