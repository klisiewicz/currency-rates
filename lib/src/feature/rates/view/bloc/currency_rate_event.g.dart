// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate_event.dart';

// **************************************************************************
// SealedGenerator
// **************************************************************************

extension CurrencyRateEventExt on CurrencyRateEvent {
  void continued(
    Function(CurrencyRatesLoadEvent) continuationCurrencyRatesLoadEvent,
    Function(CurrencyRatesRefreshEvent) continuationCurrencyRatesRefreshEvent,
  ) {
    if (this is CurrencyRatesLoadEvent) {
      continuationCurrencyRatesLoadEvent(this);
    }
    if (this is CurrencyRatesRefreshEvent) {
      continuationCurrencyRatesRefreshEvent(this);
    }
  }

  R join<R>(
    R Function(CurrencyRatesLoadEvent) joinCurrencyRatesLoadEvent,
    R Function(CurrencyRatesRefreshEvent) joinCurrencyRatesRefreshEvent,
  ) {
    R r;
    if (this is CurrencyRatesLoadEvent) {
      r = joinCurrencyRatesLoadEvent(this);
    }
    if (this is CurrencyRatesRefreshEvent) {
      r = joinCurrencyRatesRefreshEvent(this);
    }

    return r;
  }
}
