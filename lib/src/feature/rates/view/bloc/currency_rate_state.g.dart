// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate_state.dart';

// **************************************************************************
// SealedGenerator
// **************************************************************************

extension CurrencyRateStateExt on CurrencyRateState {
  void continued(
    Function(CurrencyRatesLoading) continuationCurrencyRatesLoading,
    Function(CurrencyRatesLoaded) continuationCurrencyRatesLoaded,
    Function(CurrencyRatesRefreshing) continuationCurrencyRatesRefreshing,
    Function(CurrencyRatesError) continuationCurrencyRatesError,
  ) {
    if (this is CurrencyRatesLoading) {
      continuationCurrencyRatesLoading(this);
    }
    if (this is CurrencyRatesLoaded) {
      continuationCurrencyRatesLoaded(this);
    }
    if (this is CurrencyRatesRefreshing) {
      continuationCurrencyRatesRefreshing(this);
    }
    if (this is CurrencyRatesError) {
      continuationCurrencyRatesError(this);
    }
  }

  R join<R>(
    R Function(CurrencyRatesLoading) joinCurrencyRatesLoading,
    R Function(CurrencyRatesLoaded) joinCurrencyRatesLoaded,
    R Function(CurrencyRatesRefreshing) joinCurrencyRatesRefreshing,
    R Function(CurrencyRatesError) joinCurrencyRatesError,
  ) {
    R r;
    if (this is CurrencyRatesLoading) {
      r = joinCurrencyRatesLoading(this);
    }
    if (this is CurrencyRatesLoaded) {
      r = joinCurrencyRatesLoaded(this);
    }
    if (this is CurrencyRatesRefreshing) {
      r = joinCurrencyRatesRefreshing(this);
    }
    if (this is CurrencyRatesError) {
      r = joinCurrencyRatesError(this);
    }

    return r;
  }
}
