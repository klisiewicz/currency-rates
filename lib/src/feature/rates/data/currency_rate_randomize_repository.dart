import 'dart:math';

import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/domain/repository/currency_rate_repository.dart';

class CurrencyRateRandomizeRepository extends CurrencyRateRepository {
  final CurrencyRateRepository _currencyRateRepository;
  final _random = Random();

  CurrencyRateRandomizeRepository(this._currencyRateRepository);

  @override
  Future<List<CurrencyRate>> getCurrencyRates() async {
    final currencyRates = await _currencyRateRepository.getCurrencyRates();
    return currencyRates
        .map(
          (rate) => CurrencyRate(
            currency: rate.currency,
            bid: rate.bid + _random._offset(),
            ask: rate.ask + _random._offset(),
          ),
        )
        .toList();
  }
}

extension on Random {
  double _offset() => (nextInt(20) - 10) / 10000.0;
}
