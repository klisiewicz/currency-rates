import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';

abstract class CurrencyRateRepository {
  Future<List<CurrencyRate>> getCurrencyRates();
}
