import 'package:ecom_store/application/auth_bloc/auth_bloc.dart';
import 'package:ecom_store/application/cart_bloc/bloc/cart_bloc.dart';
import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/infrastructure/auth/firebase_auth_facade.dart';
import 'package:ecom_store/presentation/screen/cart/cart_screen.dart';
import 'package:ecom_store/presentation/screen/home/widgets/drawer_widget.dart';
import 'package:ecom_store/presentation/screen/product/product_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  DateTime? currentBackPressTime;
  int _selectedNavigationIndex = 0;
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
    return BlocProvider(
      create: (context) => AuthBloc(authFacade: FirebaseAuthFacade())
        ..add(const AuthEvent.authCheckRequested()),
      child: WillPopScope(
        onWillPop: () {
          DateTime now = DateTime.now();
          if (currentBackPressTime == null ||
              now.difference(currentBackPressTime!) >
                  const Duration(seconds: 2)) {
            currentBackPressTime = now;
            toastMessage('Please press back again to exit');
            return Future.value(false);
          }
          return Future.value(true);
        },
        child: BlocProvider(
          create: (context) => CartBloc()..add(const CartEvent.started()),
          child: Scaffold(
            key: _scaffoldKey,
            appBar: PreferredSize(
                preferredSize: Size(screenWidth, 50),
                child: AppBarWidget(scaffoldKey: _scaffoldKey)),
            drawer: DrawerWidget(
              context: context,
              scaffoldKey: _scaffoldKey,
            ),
            body: PageView(
                controller: _pageController,
                onPageChanged: (index) {},
                children: [
                  const ProductHomeScreen(),
                  Container(
                    color: Colors.red,
                  )
                ]),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedNavigationIndex,
              onTap: (index) {
                setState(() {
                  _selectedNavigationIndex = index;

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
          ),
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    context.read<CartBloc>().add(const CartEvent.started());
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return AppBar(
          elevation: 5,
          leading: InkWell(
            onTap: () => _scaffoldKey.currentState!.openDrawer(),
            child: const Icon(Icons.menu),
          ),
          actions: [
            InkWell(
              onTap: () => Get.to(() => const CartScreen()),
              child: Badge(
                label: Text(state.cartCount.toString()),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            )
          ],
        );
      },
    );
  }
}
