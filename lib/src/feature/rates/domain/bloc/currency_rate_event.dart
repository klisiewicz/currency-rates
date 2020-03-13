import 'package:flutter/foundation.dart';

@immutable
abstract class CurrencyRateEvent {
  const CurrencyRateEvent();
}

class LoadCurrencyRatesEvent extends CurrencyRateEvent {
  const LoadCurrencyRatesEvent();
}
