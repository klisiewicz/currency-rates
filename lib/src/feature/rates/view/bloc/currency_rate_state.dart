import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:sealed_unions/sealed_unions.dart';

@immutable
class CurrencyRateState extends Union4Impl<CurrencyRatesLoading,
    CurrencyRatesLoaded, CurrencyRatesRefreshing, CurrencyRatesError> {
  static const Quartet<CurrencyRatesLoading, CurrencyRatesLoaded,
      CurrencyRatesRefreshing, CurrencyRatesError> _factory = Quartet();

  CurrencyRateState._(
    Union4<CurrencyRatesLoading, CurrencyRatesLoaded,
            CurrencyRatesRefreshing, CurrencyRatesError>
        union,
  ) : super(union);

  factory CurrencyRateState.loading() =>
      CurrencyRateState._(_factory.first(const CurrencyRatesLoading()));

  factory CurrencyRateState.loaded(List<CurrencyRate> rates) =>
      CurrencyRateState._(_factory.second(CurrencyRatesLoaded(rates)));

  factory CurrencyRateState.refreshing(List<CurrencyRate> rates) =>
      CurrencyRateState._(_factory.third(CurrencyRatesRefreshing(rates)));

  factory CurrencyRateState.error(Object error) =>
      CurrencyRateState._(_factory.fourth(CurrencyRatesError(error)));
}

class CurrencyRatesLoading extends Equatable {
  const CurrencyRatesLoading();

  @override
  List<Object> get props => [];
}

class CurrencyRatesLoaded extends Equatable {
  final List<CurrencyRate> rates;

  const CurrencyRatesLoaded(this.rates);

  @override
  List<Object> get props => [rates];
}

class CurrencyRatesRefreshing extends Equatable {
  final List<CurrencyRate> rates;

  const CurrencyRatesRefreshing(this.rates);

  @override
  List<Object> get props => [rates];
}

class CurrencyRatesError extends Equatable {
  final Object error;

  const CurrencyRatesError(this.error);

  @override
  List<Object> get props => [error];
}
