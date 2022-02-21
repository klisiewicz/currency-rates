import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:sealed_annotations/sealed_annotations.dart';

part 'currency_rate_state.sealed.dart';

@Sealed()
@WithEquality(Equality.data)
abstract class _CurrencyRateState {
  void loading();

  void loaded(List<CurrencyRate> rates);

  void refreshing(List<CurrencyRate> rates);

  void error(Object error);
}
