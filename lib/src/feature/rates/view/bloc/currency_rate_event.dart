import 'package:flutter/foundation.dart';
import 'package:sum_types/sum_types.dart';

part 'currency_rate_event.g.dart';

@SumType()
class CurrencyRateEvent extends _$CurrencyRateEvent {
  // It is impossible to use "load" for the event's name since Sum Types generates
  // static method "load" and this generates naming conflicts.
  const CurrencyRateEvent.fetch() : super(fetch: const Unit());

  const CurrencyRateEvent.refresh() : super(refresh: const Unit());
}
