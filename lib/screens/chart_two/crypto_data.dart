import 'package:flutter/material.dart';

class CryptoData {
  CryptoData({Key? key});
  final List<int> cryptoDate = Iterable<int>.generate(30).toList();

  /// BTC
  List<CryptoPrice> get getBTCPriceData {
    List<CryptoPrice> myList = getCryptoPriceData(priceBTC.reversed.toList());
    return myList;
  }

  String quantityBTC =
      double.parse((2563 / 64065.1).toStringAsPrecision(4)).toString();

  /// USDT
  List<CryptoPrice> get getUSDTPriceData {
    List<CryptoPrice> myList = getCryptoPriceData(priceUSDT.reversed.toList());
    return myList;
  }

  String quantityUSDT =
      double.parse((323 / 1.0002).toStringAsPrecision(4)).toString();

  /// ETH
  List<CryptoPrice> get getETHPriceData {
    List<CryptoPrice> myList = getCryptoPriceData(priceETH.reversed.toList());
    return myList;
  }

  String quantityETH =
      double.parse((2134 / 4628.83).toStringAsPrecision(4)).toString();

  /// LTC
  List<CryptoPrice> get getLTCPriceData {
    List<CryptoPrice> myList = getCryptoPriceData(priceLTC.reversed.toList());
    return myList;
  }

  String quantityLTC =
      double.parse((856 / 247.9).toStringAsPrecision(4)).toString();

  /// XRP
  List<CryptoPrice> get getXRPPriceData {
    List<CryptoPrice> myList = getCryptoPriceData(priceXRP.reversed.toList());
    return myList;
  }

  String quantityXRP =
      double.parse((1312 / 1.17718).toStringAsPrecision(4)).toString();

  List<CryptoPrice> getCryptoPriceData(List<double> price) {
    final List<CryptoPrice> chartDataPrice = [];
    int i = 0;
    for (i; i < 30; i++) {
      chartDataPrice.add(
        CryptoPrice(
          date: cryptoDate[i],
          price: price[i],
        ),
      );
    }

    return chartDataPrice;
  }

  List<double> priceBTC = [
    64065.1,
    65005.4,
    64556.4,
    66627.7,
    68205.4,
    65164.5,
    62091.7,
    61078.6,
    62139.5,
    62464,
    63041.7,
    61098.7,
    60086.2,
    61648.6,
    61707.2,
    61558.1,
    58791.1,
    60708.6,
    62688.4,
    62094.3,
    61253.3,
    61162.7,
    63145,
    64998.5,
    63918.7,
    62643.6,
    62055.5,
    61159,
    61426.5,
    59323.5,
  ];
  List<double> priceUSDT = [
    1.0002,
    1,
    0.9998,
    0.9999,
    0.9998,
    1.0004,
    1.0006,
    1.0006,
    1.0005,
    1.0002,
    1.0007,
    1.0003,
    1.0005,
    1.0002,
    1,
    1.0003,
    1.0004,
    0.9999,
    1.0002,
    1,
    1,
    0.9997,
    0.9998,
    1.0002,
    1.0001,
    1.0001,
    1,
    1,
    1,
    1.0002,
  ];
  List<double> priceETH = [
    4628.83,
    4780.75,
    4632.16,
    4714.79,
    4796.78,
    4716.81,
    4547.8,
    4486.79,
    4540.75,
    4552.3,
    4575.86,
    4314.85,
    4198.74,
    4367.71,
    4343.43,
    4364.58,
    3994.83,
    4211.74,
    4221.87,
    4138.39,
    4140.25,
    4029.33,
    4149.79,
    4178.42,
    3847.36,
    3820.01,
    3845.27,
    3878.53,
    3838.15,
    3823.41,
  ];
  List<double> priceLTC = [
    247.9,
    276.7,
    254.5,
    267.4,
    243.1,
    205.7,
    199.3,
    200.302,
    201.679,
    203.266,
    201.86,
    196.078,
    189.911,
    193.696,
    192.623,
    192.951,
    182.129,
    202.741,
    196.52,
    193.531,
    198.58,
    193.241,
    200.13,
    208.249,
    186.251,
    190.26,
    185.26,
    187.05,
    190.139,
    184.649,
  ];
  List<double> priceXRP = [
    1.17718,
    1.21766,
    1.20279,
    1.23754,
    1.26538,
    1.28079,
    1.15219,
    1.1652,
    1.19307,
    1.22586,
    1.14132,
    1.09675,
    1.07849,
    1.10814,
    1.07959,
    1.07333,
    1.00537,
    1.11126,
    1.11375,
    1.09175,
    1.09296,
    1.09221,
    1.10757,
    1.14321,
    1.1051,
    1.09658,
    1.09249,
    1.13518,
    1.13805,
    1.13653,
  ];
}

class CryptoPrice {
  CryptoPrice({
    required this.date,
    required this.price,
  });
  final int date;
  final double price;
}
