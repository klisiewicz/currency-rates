import 'package:flutter/foundation.dart';

@immutable
abstract class CurrencyRateEvent {
  const CurrencyRateEvent();
}

class CurrencyRatesLoadEvent extends CurrencyRateEvent {
  const CurrencyRatesLoadEvent();
}

class CurrencyRatesRefreshEvent extends CurrencyRateEvent {
  const CurrencyRatesRefreshEvent();
}
