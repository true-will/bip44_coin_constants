import 'package:bip44_coin_constants/coin.dart';
import 'package:test/test.dart';

import 'package:bip44_coin_constants/bip44_coin_constants.dart'
    as bip44_coin_constants;

void main() {
  final constants = bip44_coin_constants.constants;
  test('Should return Bitcoin constant', () {
    Coin testCoin = constants.firstWhere((coin) => coin.coinName == "Bitcoin");
    expect(testCoin.constant, 0x80000000);
  });

  test('Should return only one item in list', () {
    List<Coin> testCoinList =
        constants.where((coin) => coin.coinName == "Bitcoin").toList();
    expect(testCoinList.length, 1);
  });
}
