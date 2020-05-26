import 'package:flutter/foundation.dart';
import 'package:sealed_unions/sealed_unions.dart';

@immutable
class CurrencyRateEvent
    extends Union2Impl<_CurrencyRatesLoadEvent, _CurrencyRatesRefreshEvent> {
  static const Doublet<_CurrencyRatesLoadEvent, _CurrencyRatesRefreshEvent>
      _factory = Doublet();

  CurrencyRateEvent._(
    Union2<_CurrencyRatesLoadEvent, _CurrencyRatesRefreshEvent> union,
  ) : super(union);

  factory CurrencyRateEvent.load() =>
      CurrencyRateEvent._(_factory.first(const _CurrencyRatesLoadEvent()));

  factory CurrencyRateEvent.refresh() =>
      CurrencyRateEvent._(_factory.second(const _CurrencyRatesRefreshEvent()));
}

class _CurrencyRatesLoadEvent {
  const _CurrencyRatesLoadEvent();
}

class _CurrencyRatesRefreshEvent {
  const _CurrencyRatesRefreshEvent();
}
