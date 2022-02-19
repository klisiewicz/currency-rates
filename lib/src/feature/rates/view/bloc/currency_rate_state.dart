import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:flutter/foundation.dart';
import 'package:sum_types/sum_types.dart';

part 'currency_rate_state.g.dart';

@SumType()
class CurrencyRateState extends _$CurrencyRateState {
  const CurrencyRateState.loading() : super(loading: const Unit());

  const CurrencyRateState.loaded(List<CurrencyRate> rates)
      : super(loaded: rates);

  const CurrencyRateState.refreshing(List<CurrencyRate> rates)
      : super(refreshing: rates);

  const CurrencyRateState.failure(Object error) : super(failure: error);
}
