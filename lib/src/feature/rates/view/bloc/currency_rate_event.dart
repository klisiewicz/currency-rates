import 'package:flutter/foundation.dart';
import 'package:sealed_class/sealed_class.dart';

part 'currency_rate_event.g.dart';

@immutable
@Sealed([
  CurrencyRatesLoadEvent,
  CurrencyRatesRefreshEvent,
])
abstract class CurrencyRateEvent {
  const CurrencyRateEvent();
}

class CurrencyRatesLoadEvent implements CurrencyRateEvent {
  const CurrencyRatesLoadEvent();
}

class CurrencyRatesRefreshEvent implements CurrencyRateEvent {
  const CurrencyRatesRefreshEvent();
}
