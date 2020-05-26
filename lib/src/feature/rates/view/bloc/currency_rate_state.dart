import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:super_enum/super_enum.dart';

part "currency_rate_state.g.dart";

@superEnum
// ignore_for_file: constant_identifier_names
enum _CurrencyRateState {
  @object
  Loading,
  @Data(fields: [
    DataField<List<CurrencyRate>>('rates'),
  ])
  Loaded,
  @Data(fields: [
    DataField<List<CurrencyRate>>('rates'),
  ])
  Refreshing,
  @Data(fields: [
    DataField<dynamic>('error'),
  ])
  Failure,
}
