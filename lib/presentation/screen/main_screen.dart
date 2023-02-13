import 'package:ecom_store/presentation/screen/product/product_home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedNavigationIndex = 0;
  int _selectedPageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading: const InkWell(
          child: Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 15, top: 15, bottom: 15),
            child: Image.asset('assets/image/icons/cart_icon.png'),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedNavigationIndex,
        onTap: (index) {
          setState(() {
            _selectedNavigationIndex = index;
            _selectedPageIndex = index;
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedPageIndex = index);
          },
          children: [
            ProductHomeScreen(),
            Container(
              color: Colors.red,
            )
          ]),
    );
  }
}
