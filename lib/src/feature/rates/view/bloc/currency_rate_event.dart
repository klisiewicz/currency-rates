import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_rate_event.freezed.dart';

@freezed
abstract class CurrencyRateEvent with _$CurrencyRateEvent {
  const factory CurrencyRateEvent.load() = Load;

  const factory CurrencyRateEvent.refresh() = Refresh;
}
