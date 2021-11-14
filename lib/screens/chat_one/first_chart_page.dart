import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hadi_mahmoudi/screens/chat_one/bar_chart_page.dart';

class FirstChartPage extends StatefulWidget {
  const FirstChartPage({Key? key}) : super(key: key);

  @override
  _FirstChartPageState createState() => _FirstChartPageState();
}

class _FirstChartPageState extends State<FirstChartPage> {
  /// List Margin & Padding.
  EdgeInsetsGeometry? listMargin = const EdgeInsets.symmetric(horizontal: 16);
  EdgeInsetsGeometry? listPadding;

  /// List DAY & WEATHER settings.
  double listDayWeatherSpace = 4;
  double listDayFontSize = 14;
  Color listDayColor = Colors.white;
  double listWeatherFontSize = 12;
  Color listWeatherColor = Colors.blueGrey;

  /// List ICON settings.
  double listIconWidthSpace = 10;
  double listIconBoxHeightSize = 50;
  double listIconBoxWidthSize = 50;
  AlignmentGeometry? listIconAlignment;
  double listIconSize = 30;
  Color listIconColor = Colors.white;

  /// List Temperature settings.
  double listTempSpace = 4;
  double listHighTempFontSize = 14;
  Color listHighTempColor = const Color(0xffD6325A);
  double listLowTempFontSize = 14;
  Color listLowTempColor = const Color(0xff594FBC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15182E),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const BarChartPage(),
            Expanded(
              child: ListView(
                children: [
                  /// Monday
                  Container(
                    margin: listMargin,
                    padding: listPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Day and Weather Text
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Monday',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: listDayFontSize,
                              ),
                            ),
                            SizedBox(
                              height: listDayWeatherSpace,
                            ),
                            Text(
                              'Mostly cloudy',
                              style: TextStyle(
                                color: listWeatherColor,
                                fontSize: listWeatherFontSize,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: listIconWidthSpace),

                        /// Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: listIconAlignment,
                          // color: Colors.white,
                          child: Center(
                            child: FaIcon(
                              /// Icon
                              FontAwesomeIcons.cloudSun,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Temperature
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '13°',
                              style: TextStyle(
                                color: listHighTempColor,
                                fontSize: listHighTempFontSize,
                              ),
                            ),
                            SizedBox(height: listTempSpace),
                            Text(
                              '7°',
                              style: TextStyle(
                                color: listLowTempColor,
                                fontSize: listLowTempFontSize,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 16,
                    endIndent: 16,
                  ),

                  /// Tuesday
                  Container(
                    margin: listMargin,
                    padding: listPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Day and Weather Text
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tuesday',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: listDayFontSize,
                              ),
                            ),
                            SizedBox(
                              height: listDayWeatherSpace,
                            ),
                            Text(
                              'Showers 60%',
                              style: TextStyle(
                                color: listWeatherColor,
                                fontSize: listWeatherFontSize,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: listIconWidthSpace),

                        /// Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: listIconAlignment,
                          // color: Colors.white,
                          child: Center(
                            child: FaIcon(
                              /// Icon
                              FontAwesomeIcons.cloudRain,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Temperature
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '12°',
                              style: TextStyle(
                                color: listHighTempColor,
                                fontSize: listHighTempFontSize,
                              ),
                            ),
                            SizedBox(height: listTempSpace),
                            Text(
                              '3°',
                              style: TextStyle(
                                color: listLowTempColor,
                                fontSize: listLowTempFontSize,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 16,
                    endIndent: 16,
                  ),

                  ///Wednesday
                  Container(
                    margin: listMargin,
                    padding: listPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Day and Weather Text
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wednesday',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: listDayFontSize,
                              ),
                            ),
                            SizedBox(
                              height: listDayWeatherSpace,
                            ),
                            Text(
                              'Showers 70%',
                              style: TextStyle(
                                color: listWeatherColor,
                                fontSize: listWeatherFontSize,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: listIconWidthSpace),

                        /// Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: listIconAlignment,
                          // color: Colors.white,
                          child: Center(
                            child: FaIcon(
                              /// Icon
                              FontAwesomeIcons.cloudSunRain,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Temperature
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '7°',
                              style: TextStyle(
                                color: listHighTempColor,
                                fontSize: listHighTempFontSize,
                              ),
                            ),
                            SizedBox(height: listTempSpace),
                            Text(
                              '1°',
                              style: TextStyle(
                                color: listLowTempColor,
                                fontSize: listLowTempFontSize,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 16,
                    endIndent: 16,
                  ),

                  /// Thursday
                  Container(
                    margin: listMargin,
                    padding: listPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Day and Weather Text
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Thursday',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: listDayFontSize,
                              ),
                            ),
                            SizedBox(
                              height: listDayWeatherSpace,
                            ),
                            Text(
                              'Partly cloudy',
                              style: TextStyle(
                                color: listWeatherColor,
                                fontSize: listWeatherFontSize,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: listIconWidthSpace),

                        /// Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: listIconAlignment,
                          // color: Colors.white,
                          child: Center(
                            child: FaIcon(
                              /// Icon
                              FontAwesomeIcons.cloudSun,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Temperature
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '8°',
                              style: TextStyle(
                                color: listHighTempColor,
                                fontSize: listHighTempFontSize,
                              ),
                            ),
                            SizedBox(height: listTempSpace),
                            Text(
                              '1°',
                              style: TextStyle(
                                color: listLowTempColor,
                                fontSize: listLowTempFontSize,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 16,
                    endIndent: 16,
                  ),

                  /// Friday
                  Container(
                    margin: listMargin,
                    padding: listPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Day and Weather Text
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Friday',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: listDayFontSize,
                              ),
                            ),
                            SizedBox(
                              height: listDayWeatherSpace,
                            ),
                            Text(
                              'Mostly sunny',
                              style: TextStyle(
                                color: listWeatherColor,
                                fontSize: listWeatherFontSize,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: listIconWidthSpace),

                        /// Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: listIconAlignment,
                          // color: Colors.white,
                          child: Center(
                            child: FaIcon(
                              /// Icon
                              FontAwesomeIcons.solidSun,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Temperature
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '8°',
                              style: TextStyle(
                                color: listHighTempColor,
                                fontSize: listHighTempFontSize,
                              ),
                            ),
                            SizedBox(height: listTempSpace),
                            Text(
                              '1°',
                              style: TextStyle(
                                color: listLowTempColor,
                                fontSize: listLowTempFontSize,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 16,
                    endIndent: 16,
                  ),

                  /// Saturday
                  Container(
                    margin: listMargin,
                    padding: listPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Day and Weather Text
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Saturday',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: listDayFontSize,
                              ),
                            ),
                            SizedBox(
                              height: listDayWeatherSpace,
                            ),
                            Text(
                              'Mostly sunny',
                              style: TextStyle(
                                color: listWeatherColor,
                                fontSize: listWeatherFontSize,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: listIconWidthSpace),

                        /// Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: listIconAlignment,
                          // color: Colors.white,
                          child: Center(
                            child: FaIcon(
                              /// Icon
                              FontAwesomeIcons.solidSun,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Temperature
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '9°',
                              style: TextStyle(
                                color: listHighTempColor,
                                fontSize: listHighTempFontSize,
                              ),
                            ),
                            SizedBox(height: listTempSpace),
                            Text(
                              '3°',
                              style: TextStyle(
                                color: listLowTempColor,
                                fontSize: listLowTempFontSize,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 16,
                    endIndent: 16,
                  ),

                  /// Sunday
                  Container(
                    margin: listMargin,
                    padding: listPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Day and Weather Text
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sunday',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: listDayFontSize,
                              ),
                            ),
                            SizedBox(
                              height: listDayWeatherSpace,
                            ),
                            Text(
                              'Partly cloudy',
                              style: TextStyle(
                                color: listWeatherColor,
                                fontSize: listWeatherFontSize,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: listIconWidthSpace),

                        /// Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: listIconAlignment,
                          // color: Colors.white,
                          child: Center(
                            child: FaIcon(
                              /// Icon
                              FontAwesomeIcons.cloudSun,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Temperature
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '9°',
                              style: TextStyle(
                                color: listHighTempColor,
                                fontSize: listHighTempFontSize,
                              ),
                            ),
                            SizedBox(height: listTempSpace),
                            Text(
                              '2°',
                              style: TextStyle(
                                color: listLowTempColor,
                                fontSize: listLowTempFontSize,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
