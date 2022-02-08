import 'package:currency_rates/src/feature/rates/data/currency_rate_nbp_repository.dart';
import 'package:currency_rates/src/feature/rates/data/currency_rate_randomize_repository.dart';
import 'package:currency_rates/src/feature/rates/domain/repository/currency_rate_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

void setupDependencies() {
  final locator = GetIt.instance;
  locator.registerLazySingleton(() => Client());
  locator.registerLazySingleton<CurrencyRateRepository>(
    () => CurrencyRateNbpRepository(locator()),
    instanceName: 'nbp',
  );
  locator.registerLazySingleton<CurrencyRateRepository>(
    () => CurrencyRateRandomizeRepository(
      locator.get(instanceName: 'nbp'),
    ),
  );
}

T inject<T extends Object>([String? name]) {
  return GetIt.instance.get<T>(instanceName: name);
}
