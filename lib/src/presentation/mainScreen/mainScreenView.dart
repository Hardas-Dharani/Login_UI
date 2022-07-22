import 'package:flutter/material.dart';
import 'package:test/src/presentation/mainScreen/view/mainscreenViewMobile.dart';
import 'package:test/src/utlis/widget/responsive.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _createBottomNavigationBar(),
      body: SafeArea(
        child: Responsive(
            mobile: MainScreenMobileView(),
            tablet: MainScreenMobileView(),
            desktop: Container()),
      ),
    );
  }

  Widget _createBottomNavigationBar() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF1976D2),
            Color(0xFF0D47A1),
          ],
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.white),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Business",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "School",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
