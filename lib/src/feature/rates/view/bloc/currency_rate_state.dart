import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:sealed_unions/sealed_unions.dart';

@immutable
class CurrencyRateState extends Union4Impl<_CurrencyRatesLoading,
    _CurrencyRatesLoaded, _CurrencyRatesRefreshing, _CurrencyRatesError> {
  static const Quartet<_CurrencyRatesLoading, _CurrencyRatesLoaded,
      _CurrencyRatesRefreshing, _CurrencyRatesError> _factory = Quartet();

  CurrencyRateState._(
    Union4<_CurrencyRatesLoading, _CurrencyRatesLoaded,
            _CurrencyRatesRefreshing, _CurrencyRatesError>
        union,
  ) : super(union);

  factory CurrencyRateState.loading() =>
      CurrencyRateState._(_factory.first(const _CurrencyRatesLoading()));

  factory CurrencyRateState.loaded(List<CurrencyRate> rates) =>
      CurrencyRateState._(_factory.second(_CurrencyRatesLoaded(rates)));

  factory CurrencyRateState.refreshing(List<CurrencyRate> rates) =>
      CurrencyRateState._(_factory.third(_CurrencyRatesRefreshing(rates)));

  factory CurrencyRateState.error(Object error) =>
      CurrencyRateState._(_factory.fourth(_CurrencyRatesError(error)));
}

class _CurrencyRatesLoading extends Equatable {
  const _CurrencyRatesLoading();

  @override
  List<Object> get props => [];
}

class _CurrencyRatesLoaded extends Equatable {
  final List<CurrencyRate> rates;

  const _CurrencyRatesLoaded(this.rates);

  @override
  List<Object> get props => [rates];
}

class _CurrencyRatesRefreshing extends Equatable {
  final List<CurrencyRate> rates;

  const _CurrencyRatesRefreshing(this.rates);

  @override
  List<Object> get props => [rates];
}

class _CurrencyRatesError extends Equatable {
  final Object error;

  const _CurrencyRatesError(this.error);

  @override
  List<Object> get props => [error];
}
