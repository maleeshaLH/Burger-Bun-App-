import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      elevation: 8,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_sharp, size: 35), label: 'Out Burgers'),
        BottomNavigationBarItem(
            icon: Icon(Icons.star, size: 35), label: 'Favorites'),
        BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_sharp, size: 35), label: 'Track Orders'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_sharp, size: 35),
            label: 'Wallet'),
      ],
    );  
  }
}

// import 'package:burger_bun_app/screens/options_foods_screen.dart';
// import 'package:burger_bun_app/screens/selected_food_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:burger_bun_app/screens/home_screen.dart';
// // import 'package:burger_bun_app/screens/out_burgers_screen.dart';
// // import 'package:burger_bun_app/screens/favorites_screen.dart';
// // import 'package:burger_bun_app/screens/track_orders_screen.dart';
// // import 'package:burger_bun_app/screens/wallet_screen.dart';

// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _currentIndex = 0;

//   final List<Widget> _screens = [
//     HomePage(),
//     OptionsFoods()
//     // OutBurgersScreen(),
//     // FavoritesScreen(),
//     // TrackOrdersScreen(),
//     // WalletScreen(),
//   ];

//   void _onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTabTapped,
//         elevation: 8,
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.fastfood_sharp, size: 30), label: 'Out Burgers'),
//           BottomNavigationBarItem(icon: Icon(Icons.star, size: 30), label: 'Favorites'),
//           BottomNavigationBarItem(icon: Icon(Icons.food_bank_sharp, size: 30), label: 'Track Orders'),
//           BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_sharp, size: 30), label: 'Wallet'),
//         ],
//       ),
//     );
//   }
// }
