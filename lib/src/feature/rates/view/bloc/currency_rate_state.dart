import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_rate_state.freezed.dart';

@freezed
abstract class CurrencyRateState with _$CurrencyRateState {
  const factory CurrencyRateState.loading() = Loading;

  const factory CurrencyRateState.loaded(List<CurrencyRate> rates) = Loaded;

  const factory CurrencyRateState.refreshing(List<CurrencyRate> rates) =
      Refreshing;

  const factory CurrencyRateState.failure(Object error) = Failure;
}
