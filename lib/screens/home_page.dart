import 'package:flutter/material.dart';
import 'package:hadi_mahmoudi/screens/about/about_page.dart';
import 'package:hadi_mahmoudi/screens/chart_two/second_chart_page.dart';
import 'package:hadi_mahmoudi/screens/chat_one/first_chart_page.dart';
import 'package:hadi_mahmoudi/screens/form/form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Widget myWidget;
  late int _currentIndex = 0;
  final double appBarIconSize = 25;
  final double appBarHeight = 60;
  final Color selectedAppBarColor = Colors.blue;
  final Color unSelectedAppBarColor = Colors.white;
  final Color appBarBackgroundColor = const Color(0xff15182E);
  @override
  void initState() {
    setState(() {
      myWidget = const FirstChartPage();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidget,
      bottomNavigationBar: BottomAppBar(
        color: appBarBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SizedBox(
            height: appBarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// First Chart Page
                IconButton(
                  icon: Icon(
                    Icons.bar_chart,
                    color: _currentIndex == 0
                        ? selectedAppBarColor
                        : unSelectedAppBarColor,
                    size: appBarIconSize,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                      myWidget = const FirstChartPage();
                    });
                  },
                ),

                /// Second Chart Page
                IconButton(
                  icon: Icon(
                    Icons.pie_chart,
                    color: _currentIndex == 1
                        ? selectedAppBarColor
                        : unSelectedAppBarColor,
                    size: appBarIconSize,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                      myWidget = const SecondChartPage();
                    });
                  },
                ),

                /// FormPage
                IconButton(
                  icon: Icon(
                    Icons.article,
                    color: _currentIndex == 2
                        ? selectedAppBarColor
                        : unSelectedAppBarColor,
                    size: appBarIconSize,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                      myWidget = const FormPage();
                    });
                  },
                ),

                /// About Page
                IconButton(
                  icon: Icon(
                    Icons.info_outline,
                    color: _currentIndex == 3
                        ? selectedAppBarColor
                        : unSelectedAppBarColor,
                    size: appBarIconSize,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 3;
                      myWidget = const AboutPage();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
