import 'package:web3dart/web3dart.dart';

class EthAmountFormatter {
  EthAmountFormatter(this.amount);

  final int amount;
  String format({
    fromUnit = EtherUnit.wei,
    toUnit = EtherUnit.ether,
  }) {
    if (amount == null) return "-";

    return EtherAmount.fromUnitAndValue(fromUnit, amount)
        .getValueInUnit(toUnit)
        .toStringAsFixed(7);
  }
}