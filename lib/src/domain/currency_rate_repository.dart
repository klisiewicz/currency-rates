import 'package:currency_rates/src/domain/currency_rate.dart';

abstract class CurrencyRateRepository {
  Future<List<CurrencyRate>> getCurrencyRates();
}
