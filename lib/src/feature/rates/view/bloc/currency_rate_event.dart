import 'package:super_enum/super_enum.dart';

part "currency_rate_event.g.dart";

@superEnum
// ignore_for_file: constant_identifier_names
enum _CurrencyRateEvent {
  @object
  Load,
  @object
  Refresh,
}
