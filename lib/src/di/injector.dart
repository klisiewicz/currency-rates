import 'package:currency_rates/src/data/currency_rate_nbp_repository.dart';
import 'package:currency_rates/src/domain/currency_rate_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

void setupDependencies() {
  final locator = GetIt.instance;
  locator.registerLazySingleton(() => Client());
  locator.registerLazySingleton<CurrencyRateRepository>(
    () => CurrencyRateNbpRepository(locator()),
  );
}

T inject<T>([String name]) => GetIt.instance.get(name);
