import 'package:flutter/material.dart';
import 'package:sodateru_kakeibo/best_price.dart';
import 'package:sodateru_kakeibo/color_table.dart';
import 'package:sodateru_kakeibo/register_price.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedNavindex = 0;
  final _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageViewController,
        children: const <Widget>[
          BastPricePage(),
          RegisterPricePage(),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedNavindex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorTable.primaryYellowColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Icon(Icons.search),
            ),
            label: "最安値を調べる",
            tooltip: "今まで買った商品やお店ごとに最安値を確認できます",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Icon(Icons.history_edu),
            ),
            label: "値段を登録する",
            tooltip: "商品、値段、お店を登録し、他のお店と比較できます",
          ),
        ],
        currentIndex: _selectedNavindex,
        onTap: (index) {
          _pageViewController.animateToPage(
            index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
          );
        },
        enableFeedback: true,
        selectedItemColor: ColorTable.primaryBlackColor,
        unselectedItemColor: ColorTable.primaryBlackColor.withOpacity(0.5),
        selectedIconTheme: const IconThemeData(
          size: 30,
          color: ColorTable.primaryBlackColor,
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
          color: ColorTable.primaryBlackColor,
          letterSpacing: 1.0,
        ),
        unselectedIconTheme: IconThemeData(
          size: 30,
          color: ColorTable.primaryBlackColor.withOpacity(0.2),
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          color: ColorTable.primaryBlackColor.withOpacity(0.2),
          letterSpacing: 1.0,
        ),
      ),
    );
  }
}
