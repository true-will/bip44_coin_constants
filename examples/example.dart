import 'package:bip44_coin_constants/bip44_coin_constants.dart'
    as bip44_coin_constants;
import 'package:bip44_coin_constants/coin.dart';

void main() {
// iterate through constants and print all coin constants
// format: coin name: Bitcoin; coin symbol: BTC; coin constant: 0x80000000

  bip44_coin_constants.constants.forEach((Coin coin) => print(coin));

// Find your coins by using where
  List<Coin> liteCoin = bip44_coin_constants.constants
      .where((Coin coin) => coin.coinSymbol == 'LTC')
      .toList();
// ---- OR on multiple elements if you are aware of duplicates
  List<Coin> liquidBitcoin = bip44_coin_constants.constants
      .where((Coin coin) =>
          coin.coinSymbol == 'LBTC' && coin.coinName == 'Liquid BTC')
      .toList();

// Be sure to assert there was only one result
  assert(liteCoin.length == 1);
  assert(liquidBitcoin.length == 1);

  print(liteCoin[0]);
// coin name: Litecoin; coin symbol: LTC; coin constant: 0x80000002;
  print(liquidBitcoin[0]);
// coin name: Liquid BTC; coin symbol: LBTC; coin constant: 0x800006f0;

  print(liteCoin[0].constant);
// 2147483650 (which is 0x80000002 in hex)
  print(liquidBitcoin[0].constant);
// 2147485424 (which is 0x800006f0 in hex)
}
