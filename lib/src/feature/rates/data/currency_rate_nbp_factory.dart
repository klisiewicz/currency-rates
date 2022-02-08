import 'package:currency_rates/src/feature/rates/domain/entity/currency.dart';
import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/domain/entity/price.dart';
import 'package:meta/meta.dart';

@immutable
class CurrencyRateNbpFactory {
  const CurrencyRateNbpFactory();

  List<CurrencyRate> fromMapList(Map map) {
    final rates = map['rates'] as List;
    if (rates.isEmpty) return [];
    return rates
        .map((rate) => _fromJson(rate as Map))
        .where((rate) => rate.isNotXdr)
        .toList();
  }

  CurrencyRate _fromJson(Map json) {
    return CurrencyRate(
      currency: Currency(
        code: json['code'] as String,
        name: (json['currency'] as String).capitalize(),
      ),
      bid: Price(json['bid'] as num),
      ask: Price(json['ask'] as num),
    );
  }
}

extension on CurrencyRate {
  bool get isNotXdr => currency.code != 'XDR';
}

extension on String {
  String capitalize() => this[0].toUpperCase() + substring(1);
}
