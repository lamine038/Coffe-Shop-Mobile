import 'package:agrilegeey/pages/favoris.dart';
import 'package:agrilegeey/pages/cart.dart';
import 'package:agrilegeey/pages/homePage.dart';
import 'package:agrilegeey/pages/notification.dart';
import 'package:flutter/material.dart';


class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex= 0;
  final List<Widget>_pages = const [
      Homepage(),
      Favoris(),
      Cart(),
      Notif()
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // couleur de l’ombre
              spreadRadius: 2, // étalement
              blurRadius: 10, // flou
              offset: const Offset(0, -2), // position de l’ombre (vers le haut)
            ),
          ],
        ),
        child: ClipRRect(

          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
            child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.bold,

          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            fontWeight: FontWeight.w500
          ),
          unselectedItemColor: Colors.brown,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,size: 35,),label: 'Accueil'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border,size: 35,),label: 'Favoris'),
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart,size: 35,),label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.notification_add,size: 35,),label: 'Notif'),
          ],
        ),
            ),
      )
    );
  }
}
