import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hadi_mahmoudi/screens/chart_two/crypto_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SecondChartPage extends StatefulWidget {
  const SecondChartPage({Key? key}) : super(key: key);
  static const routeName = '/SecondChartPage';

  @override
  _SecondChartPageState createState() => _SecondChartPageState();
}

class _SecondChartPageState extends State<SecondChartPage> {
  /// CryptoData instance.
  CryptoData cryptoData = CryptoData();

  /// Pie Chart Data.
  late List<CryptoWalletData> _chartData;

  /// List Settings.
  EdgeInsetsGeometry? listMargin = const EdgeInsets.symmetric(
    horizontal: 16,
  );
  EdgeInsetsGeometry? listPadding = const EdgeInsets.only(left: 8);
  double listItemSpace = 8;
  double listBoxBorder = 10;
  double listBoxHeightSize = 90;
  Color? listBoxColor = const Color(0xeb232449);
  Gradient? listGradient;

  /// List ICON settings.
  Color listIconColor = Colors.white;
  double listIconSize = 40;
  double listIconBoxHeightSize = 50;
  double listIconBoxBorder = 10;
  double listIconBoxWidthSize = 50;
  Gradient? listIconGradient;

  /// List TEXTS settings.
  Color listTitleColor = Colors.white;
  Color listSubtitleColor = Colors.grey;
  double listTitleSubtitleSpace = 5;
  double listSubtitleSize = 12;

  /// List CHART settings.
  double listChartHeight = 100;
  double listChartWidth = 100;
  EdgeInsets? listChartMargin = EdgeInsets.zero;
  Color? listChartDesBorderColor = Colors.red[900];
  Color? listChartAscBorderColor = Colors.green;
  double listChartAnimationDelay = 1200;

  /// List Chart Data
  late List<CryptoPrice> _priceDataBTC;
  late List<CryptoPrice> _priceDataUSDT;
  late List<CryptoPrice> _priceDataETH;
  late List<CryptoPrice> _priceDataLTC;
  late List<CryptoPrice> _priceDataXRP;

  @override
  void initState() {
    _chartData = getCryptoWalletData();
    _priceDataBTC = cryptoData.getBTCPriceData;
    _priceDataUSDT = cryptoData.getUSDTPriceData;
    _priceDataETH = cryptoData.getETHPriceData;
    _priceDataLTC = cryptoData.getLTCPriceData;
    _priceDataXRP = cryptoData.getXRPPriceData;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15182E),
      body: SafeArea(
        child: Column(
          children: [
            /// Pie Chart.
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SfCircularChart(
                  title: ChartTitle(
                    text: 'Crypto Wallet',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  legend: Legend(
                    isVisible: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.bottom,
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                  series: <CircularSeries>[
                    PieSeries<CryptoWalletData, String>(
                      radius: '100%',
                      explode: true,
                      explodeIndex: 0,
                      dataSource: _chartData,
                      xValueMapper: (CryptoWalletData data, _) => data.name,
                      yValueMapper: (CryptoWalletData data, _) => data.value,
                      dataLabelSettings: const DataLabelSettings(
                        isVisible: true,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// List View
            Expanded(
              flex: 3,
              child: ListView(
                children: [
                  /// BTC
                  Container(
                    height: listBoxHeightSize,
                    margin: listMargin,
                    padding: listPadding,
                    decoration: BoxDecoration(
                      color: listBoxColor,
                      shape: BoxShape.rectangle,
                      gradient: listGradient,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(listBoxBorder),
                        topRight: Radius.circular(listBoxBorder),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Crypto Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: Alignment.centerLeft,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.rectangle,
                            gradient: listIconGradient,
                            borderRadius: BorderRadius.all(
                              Radius.circular(listIconBoxBorder),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              CryptoFontIcons.BTC,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Crypto price
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'BTC',
                              style: TextStyle(
                                color: listTitleColor,
                              ),
                            ),
                            SizedBox(
                              height: listTitleSubtitleSpace,
                            ),
                            Text(
                              _priceDataBTC[29].price.toString(),
                              style: TextStyle(
                                color: listSubtitleColor,
                                fontSize: listSubtitleSize,
                              ),
                            ),
                          ],
                        ),

                        /// Crypto Wallet
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$ ${_chartData[0].value.toString()}',
                              style: TextStyle(color: listTitleColor),
                            ),
                            SizedBox(
                              height: listTitleSubtitleSpace,
                            ),
                            Text(
                              cryptoData.quantityBTC,
                              style: TextStyle(
                                color: listSubtitleColor,
                                fontSize: listSubtitleSize,
                              ),
                            ),
                          ],
                        ),

                        /// Crypto Chart
                        Container(
                          color: Colors.transparent,
                          height: listChartHeight,
                          width: listChartWidth,
                          child: SfCartesianChart(
                            margin: listChartMargin,
                            backgroundColor: Colors.transparent,
                            plotAreaBorderColor: Colors.transparent,
                            primaryXAxis: NumericAxis(
                              isVisible: false,
                            ),
                            primaryYAxis: NumericAxis(
                              isVisible: false,

                              /// chart Y Axis Max & Min
                              maximum: 75000,
                              minimum: 50000,
                            ),
                            trackballBehavior: TrackballBehavior(
                              enable: true,
                              activationMode: ActivationMode.singleTap,
                              tooltipSettings: const InteractiveTooltip(
                                  enable: true, color: Colors.grey),
                            ),
                            series: <ChartSeries>[
                              SplineAreaSeries<CryptoPrice, int>(
                                /// chart data
                                dataSource: _priceDataBTC,

                                /// chart Animation Delay
                                animationDelay: listChartAnimationDelay,

                                /// chart Border Color & Width
                                borderColor: listChartAscBorderColor,
                                borderWidth: 2,

                                /// chart gradient or Color
                                // gradient: desGradientColors,
                                color: Colors.green.withOpacity(0.4),

                                xValueMapper: (CryptoPrice sales, _) =>
                                    sales.date,
                                yValueMapper: (CryptoPrice sales, _) =>
                                    sales.price,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: listItemSpace,
                  ),

                  /// USDT
                  Container(
                    height: listBoxHeightSize,
                    margin: listMargin,
                    padding: listPadding,
                    decoration: BoxDecoration(
                      color: listBoxColor,
                      shape: BoxShape.rectangle,
                      gradient: listGradient,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(listBoxBorder),
                        topRight: Radius.circular(listBoxBorder),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Crypto Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: Alignment.centerLeft,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.rectangle,
                            gradient: listIconGradient,
                            borderRadius: BorderRadius.all(
                              Radius.circular(listIconBoxBorder),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              CryptoFontIcons.USDT,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Crypto price
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'USDT',
                              style: TextStyle(
                                color: listTitleColor,
                              ),
                            ),
                            SizedBox(
                              height: listTitleSubtitleSpace,
                            ),
                            Text(
                              _priceDataUSDT[29].price.toString(),
                              style: TextStyle(
                                color: listSubtitleColor,
                                fontSize: listSubtitleSize,
                              ),
                            ),
                          ],
                        ),

                        /// Crypto Wallet
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$ ${_chartData[1].value.toString()}',
                              style: TextStyle(color: listTitleColor),
                            ),
                            SizedBox(
                              height: listTitleSubtitleSpace,
                            ),
                            Text(
                              cryptoData.quantityUSDT,
                              style: TextStyle(
                                color: listSubtitleColor,
                                fontSize: listSubtitleSize,
                              ),
                            ),
                          ],
                        ),

                        /// Crypto Chart
                        Container(
                          color: Colors.transparent,
                          height: listChartHeight,
                          width: listChartWidth,
                          child: SfCartesianChart(
                            margin: listChartMargin,
                            backgroundColor: Colors.transparent,
                            plotAreaBorderColor: Colors.transparent,
                            primaryXAxis: NumericAxis(
                              isVisible: false,
                            ),
                            primaryYAxis: NumericAxis(
                              isVisible: false,

                              /// chart Y Axis Max & Min
                              maximum: 1.001,
                              minimum: 0.999,
                            ),
                            trackballBehavior: TrackballBehavior(
                              enable: true,
                              activationMode: ActivationMode.singleTap,
                              tooltipSettings: const InteractiveTooltip(
                                  enable: true, color: Colors.grey),
                            ),
                            series: <ChartSeries>[
                              SplineAreaSeries<CryptoPrice, int>(
                                /// chart data
                                dataSource: _priceDataUSDT,

                                /// chart Animation Delay
                                animationDelay: listChartAnimationDelay,

                                /// chart Border Color & Width
                                borderColor: listChartDesBorderColor,
                                borderWidth: 2,

                                /// chart gradient or Color
                                // gradient: desGradientColors,
                                color: Colors.red.withOpacity(0.4),

                                xValueMapper: (CryptoPrice sales, _) =>
                                    sales.date,
                                yValueMapper: (CryptoPrice sales, _) =>
                                    sales.price,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: listItemSpace,
                  ),

                  /// ETH
                  Container(
                    height: listBoxHeightSize,
                    margin: listMargin,
                    padding: listPadding,
                    decoration: BoxDecoration(
                      color: listBoxColor,
                      shape: BoxShape.rectangle,
                      gradient: listGradient,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(listBoxBorder),
                        topRight: Radius.circular(listBoxBorder),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Crypto Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: Alignment.centerLeft,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            color: const Color(0xFF2E424C),
                            shape: BoxShape.rectangle,
                            gradient: listIconGradient,
                            borderRadius: BorderRadius.all(
                              Radius.circular(listIconBoxBorder),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              CryptoFontIcons.ETH,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Crypto price
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ETH',
                              style: TextStyle(
                                color: listTitleColor,
                              ),
                            ),
                            SizedBox(
                              height: listTitleSubtitleSpace,
                            ),
                            Text(
                              _priceDataETH[29].price.toString(),
                              style: TextStyle(
                                color: listSubtitleColor,
                                fontSize: listSubtitleSize,
                              ),
                            ),
                          ],
                        ),

                        /// Crypto Wallet
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$ ${_chartData[2].value.toString()}',
                              style: TextStyle(color: listTitleColor),
                            ),
                            SizedBox(
                              height: listTitleSubtitleSpace,
                            ),
                            Text(
                              cryptoData.quantityETH,
                              style: TextStyle(
                                color: listSubtitleColor,
                                fontSize: listSubtitleSize,
                              ),
                            ),
                          ],
                        ),

                        /// Crypto Chart
                        Container(
                          color: Colors.transparent,
                          height: listChartHeight,
                          width: listChartWidth,
                          child: SfCartesianChart(
                            margin: listChartMargin,
                            backgroundColor: Colors.transparent,
                            plotAreaBorderColor: Colors.transparent,
                            primaryXAxis: NumericAxis(
                              isVisible: false,
                            ),
                            primaryYAxis: NumericAxis(
                              isVisible: false,

                              /// chart Y Axis Max & Min
                              maximum: 5200,
                              minimum: 3300,
                            ),
                            trackballBehavior: TrackballBehavior(
                              enable: true,
                              activationMode: ActivationMode.singleTap,
                              tooltipSettings: const InteractiveTooltip(
                                  enable: true, color: Colors.grey),
                            ),
                            series: <ChartSeries>[
                              SplineAreaSeries<CryptoPrice, int>(
                                /// chart data
                                dataSource: _priceDataETH,

                                /// chart Animation Delay
                                animationDelay: listChartAnimationDelay,

                                /// chart Border Color & Width
                                borderColor: listChartAscBorderColor,
                                borderWidth: 2,

                                /// chart gradient or Color
                                // gradient: desGradientColors,
                                color: Colors.green.withOpacity(0.4),

                                xValueMapper: (CryptoPrice sales, _) =>
                                    sales.date,
                                yValueMapper: (CryptoPrice sales, _) =>
                                    sales.price,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: listItemSpace,
                  ),

                  /// LTC
                  Container(
                    height: listBoxHeightSize,
                    margin: listMargin,
                    padding: listPadding,
                    decoration: BoxDecoration(
                      color: listBoxColor,
                      shape: BoxShape.rectangle,
                      gradient: listGradient,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(listBoxBorder),
                        topRight: Radius.circular(listBoxBorder),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Crypto Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: Alignment.centerLeft,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            color: const Color(0xFF13366A),
                            shape: BoxShape.rectangle,
                            gradient: listIconGradient,
                            borderRadius: BorderRadius.all(
                              Radius.circular(listIconBoxBorder),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              CryptoFontIcons.LTC,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Crypto price
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'LTC',
                              style: TextStyle(
                                color: listTitleColor,
                              ),
                            ),
                            SizedBox(
                              height: listTitleSubtitleSpace,
                            ),
                            Text(
                              _priceDataLTC[29].price.toString(),
                              style: TextStyle(
                                color: listSubtitleColor,
                                fontSize: listSubtitleSize,
                              ),
                            ),
                          ],
                        ),

                        /// Crypto Wallet
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$ ${_chartData[3].value.toString()}',
                              style: TextStyle(color: listTitleColor),
                            ),
                            SizedBox(
                              height: listTitleSubtitleSpace,
                            ),
                            Text(
                              cryptoData.quantityLTC,
                              style: TextStyle(
                                color: listSubtitleColor,
                                fontSize: listSubtitleSize,
                              ),
                            ),
                          ],
                        ),

                        /// Crypto Chart
                        Container(
                          color: Colors.transparent,
                          height: listChartHeight,
                          width: listChartWidth,
                          child: SfCartesianChart(
                            margin: listChartMargin,
                            backgroundColor: Colors.transparent,
                            plotAreaBorderColor: Colors.transparent,
                            primaryXAxis: NumericAxis(
                              isVisible: false,
                            ),
                            primaryYAxis: NumericAxis(
                              isVisible: false,

                              /// chart Y Axis Max & Min
                              maximum: 300,
                              minimum: 150,
                            ),
                            trackballBehavior: TrackballBehavior(
                              enable: true,
                              activationMode: ActivationMode.singleTap,
                              tooltipSettings: const InteractiveTooltip(
                                  enable: true, color: Colors.grey),
                            ),
                            series: <ChartSeries>[
                              SplineAreaSeries<CryptoPrice, int>(
                                /// chart data
                                dataSource: _priceDataLTC,

                                /// chart Animation Delay
                                animationDelay: listChartAnimationDelay,

                                /// chart Border Color & Width
                                borderColor: listChartAscBorderColor,
                                borderWidth: 2,

                                /// chart gradient or Color
                                // gradient: desGradientColors,
                                color: Colors.green.withOpacity(0.4),

                                xValueMapper: (CryptoPrice sales, _) =>
                                    sales.date,
                                yValueMapper: (CryptoPrice sales, _) =>
                                    sales.price,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: listItemSpace,
                  ),

                  /// XRP
                  Container(
                    height: listBoxHeightSize,
                    margin: listMargin,
                    padding: listPadding,
                    decoration: BoxDecoration(
                      color: listBoxColor,
                      shape: BoxShape.rectangle,
                      gradient: listGradient,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(listBoxBorder),
                        topRight: Radius.circular(listBoxBorder),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Crypto Icon
                        Container(
                          height: listIconBoxHeightSize,
                          width: listIconBoxWidthSize,
                          alignment: Alignment.centerLeft,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.rectangle,
                            gradient: listIconGradient,
                            borderRadius: BorderRadius.all(
                              Radius.circular(listIconBoxBorder),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              CryptoFontIcons.XRP,
                              color: listIconColor,
                              size: listIconSize,
                            ),
                          ),
                        ),

                        /// Crypto price
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'XRP',
                              style: TextStyle(
                                color: listTitleColor,
                              ),
                            ),
                            SizedBox(
                              height: listTitleSubtitleSpace,
                            ),
                            Text(
                              _priceDataXRP[29].price.toString(),
                              style: TextStyle(
                                color: listSubtitleColor,
                                fontSize: listSubtitleSize,
                              ),
                            ),
                          ],
                        ),

                        /// Crypto Wallet
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$ ${_chartData[4].value.toString()}',
                              style: TextStyle(color: listTitleColor),
                            ),
                            SizedBox(
                              height: listTitleSubtitleSpace,
                            ),
                            Text(
                              cryptoData.quantityXRP,
                              style: TextStyle(
                                color: listSubtitleColor,
                                fontSize: listSubtitleSize,
                              ),
                            ),
                          ],
                        ),

                        /// Crypto Chart
                        Container(
                          color: Colors.transparent,
                          height: listChartHeight,
                          width: listChartWidth,
                          child: SfCartesianChart(
                            margin: listChartMargin,
                            backgroundColor: Colors.transparent,
                            plotAreaBorderColor: Colors.transparent,
                            primaryXAxis: NumericAxis(
                              isVisible: false,
                            ),
                            primaryYAxis: NumericAxis(
                              isVisible: false,

                              /// chart Y Axis Max & Min
                              maximum: 1.35,
                              minimum: 0.95,
                            ),
                            trackballBehavior: TrackballBehavior(
                              enable: true,
                              activationMode: ActivationMode.singleTap,
                              tooltipSettings: const InteractiveTooltip(
                                  enable: true, color: Colors.grey),
                            ),
                            series: <ChartSeries>[
                              SplineAreaSeries<CryptoPrice, int>(
                                /// chart data
                                dataSource: _priceDataXRP,

                                /// chart Animation Delay
                                animationDelay: listChartAnimationDelay,

                                /// chart Border Color & Width
                                borderColor: listChartAscBorderColor,
                                borderWidth: 2,

                                /// chart gradient or Color
                                // gradient: desGradientColors,
                                color: Colors.green.withOpacity(0.4),

                                xValueMapper: (CryptoPrice sales, _) =>
                                    sales.date,
                                yValueMapper: (CryptoPrice sales, _) =>
                                    sales.price,
                              ),
                            ],
                          ),
                        ),
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

  List<CryptoWalletData> getCryptoWalletData() {
    final List<CryptoWalletData> chartData = [
      CryptoWalletData(name: 'BTC', value: 2563),
      CryptoWalletData(name: 'USDT', value: 323),
      CryptoWalletData(name: 'ETH', value: 2134),
      CryptoWalletData(name: 'LTC', value: 856),
      CryptoWalletData(name: 'XRP', value: 1312),
    ];
    return chartData;
  }
}

class CryptoWalletData {
  CryptoWalletData({
    required this.name,
    required this.value,
  });

  final String name;
  final int value;
}
