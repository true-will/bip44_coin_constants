class Coin {
  final constant;
  final coinSymbol;
  final coinName;

  Coin(this.constant, this.coinSymbol, this.coinName);

  String toString() =>
      'coin name: ${this.coinName}; coin symbol: ${this.coinSymbol}; coin constant: 0x${this.constant.toRadixString(16)};';
}
