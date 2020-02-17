import 'package:currency_rates/src/domain/currency_rate.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class CurrencyRateState extends Equatable {
  const CurrencyRateState();

  @override
  List<Object> get props => [];
}

class CurrencyRatesBusy extends CurrencyRateState {}

class CurrencyRatesReady extends CurrencyRateState {
  final List<CurrencyRate> rates;

  const CurrencyRatesReady(this.rates);

  @override
  List<Object> get props => [rates];
}

class CurrencyRatesError extends CurrencyRateState {
  final dynamic error;

  const CurrencyRatesError(this.error);

  @override
  List<Object> get props => [error];
}
