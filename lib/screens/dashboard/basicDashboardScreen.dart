import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tapri/screens/chat_screen/chat_screen.dart';
import 'package:tapri/screens/home/homeScreen.dart';
import 'package:tapri/screens/settings/settingsScreen.dart';
import 'package:tapri/theme/app_theme.dart';
import 'package:tapri/utilities/colors/colors.dart';
import 'package:tapri/widgets/drawer.dart';
import 'package:tapri/widgets/home_screen_widgets/hexagon_with_Image.dart';
import '../../widgets/application_app_bar.dart';
import '../add_screen/add_screen.dart';
import '../wallet_screen/wallet_screen.dart';

class BasicDashboardScreen extends StatefulWidget {
  const BasicDashboardScreen({super.key});

  @override
  State<BasicDashboardScreen> createState() => _BasicDashboardScreenState();
}

class _BasicDashboardScreenState extends State<BasicDashboardScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const WalletScreen(),
    const AddScreen(),
    const ChatScreen(),
    const SettingsScreen(),
  ];
  final List<String> _titles = ["home", "wallet","Add","Chat","settings"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar(
          context: context,
          appBarTitle: _titles.elementAt(_selectedIndex).tr,
          actions: [
            Padding(
              padding: EdgeInsets.all(6.r),
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.grey[200],
                child: Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none,
                          color: Colors.black,
                        )),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.only(left: 8.r, bottom: 8.r),
                      child: CircleAvatar(
                        radius: 3.r,
                        backgroundColor: AppColors.hiTextColor,
                      ),
                    ))
                  ],
                ),
              ),
            )
          ]),
      drawer: const DrawerLayout(),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: AppTheme.isLightTheme.value
              ? const Color(0xFFF5F5F5)
              : const Color(0xFF242831),
          currentIndex: _selectedIndex,
          selectedItemColor: AppTheme.primaryColor,
          unselectedItemColor: AppTheme.textColorDark,
          iconSize: 40,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          elevation: 5,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/home.png'),
              label: '',
              activeIcon: Image.asset(
                'assets/home.png',
                color: AppColors.hiTextColor,
              ),
            ),
            BottomNavigationBarItem(
                icon: Image.asset('assets/wallet.png'),
                label: '',
                activeIcon: Image.asset(
                  'assets/wallet.png',
                  color: AppColors.hiTextColor,
                )),
            const BottomNavigationBarItem(
                icon: HexagonWithImage(
                  hexContainerColor: AppColors.hiTextColor,
                  image: 'assets/icons/addIcon.png',
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/chat.png'),
                label: '',
                activeIcon: Image.asset(
                  'assets/chat.png',
                  color: AppColors.hiTextColor,
                )),
            BottomNavigationBarItem(
                icon: Image.asset('assets/settings.png'),
                label: '',
                activeIcon: Image.asset(
                  'assets/settings.png',
                  color: AppColors.hiTextColor,
                )),
          ],
        ),
      ),
      body: Stack(
        children: [
          Obx(
            () => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AppTheme.isLightTheme.value
                      ? const AssetImage('assets/background_light.png')
                      : const AssetImage('assets/background.png'),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.all(15.r),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _pages.elementAt(_selectedIndex),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
