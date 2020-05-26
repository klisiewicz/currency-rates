import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:sealed_class/sealed_class.dart';

part 'currency_rate_state.g.dart';

@immutable
@Sealed([
  CurrencyRatesLoading,
  CurrencyRatesLoaded,
  CurrencyRatesRefreshing,
  CurrencyRatesError
])
abstract class CurrencyRateState extends Equatable {
  const CurrencyRateState();
}

class CurrencyRatesLoading extends CurrencyRateState {
  const CurrencyRatesLoading();

  @override
  List<Object> get props => [];
}

class CurrencyRatesLoaded extends CurrencyRateState {
  final List<CurrencyRate> rates;

  const CurrencyRatesLoaded(this.rates);

  @override
  List<Object> get props => [rates];
}

class CurrencyRatesRefreshing extends CurrencyRateState {
  final List<CurrencyRate> rates;

  const CurrencyRatesRefreshing(this.rates);

  @override
  List<Object> get props => [rates];
}

class CurrencyRatesError extends CurrencyRateState {
  final dynamic error;

  const CurrencyRatesError(this.error);

  @override
  List<Object> get props => [error];
}
