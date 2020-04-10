import 'package:currency_rates/src/feature/rates/domain/bloc/currency_rate_event.dart';
import 'package:currency_rates/src/feature/rates/domain/bloc/currency_rate_state.dart';
import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/domain/repository/currency_rate_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyRatesBloc extends Bloc<CurrencyRateEvent, CurrencyRateState> {
  final CurrencyRateRepository _repository;

  CurrencyRatesBloc(CurrencyRateRepository repository)
      : assert(repository != null),
        _repository = repository;

  @override
  CurrencyRateState get initialState => const CurrencyRatesLoading();

  void loadCurrencyRates() => add(const CurrencyRatesLoadEvent());

  void refreshCurrencyRates() => add(const CurrencyRatesRefreshEvent());

  @override
  Stream<CurrencyRateState> mapEventToState(CurrencyRateEvent event) async* {
    if (event is CurrencyRatesLoadEvent) {
      yield* _loadCurrencyRates();
    } else if (event is CurrencyRatesRefreshEvent) {
      yield* _refreshCurrencyRates();
    }
  }

  Stream<CurrencyRateState> _loadCurrencyRates() async* {
    yield const CurrencyRatesLoading();
    yield* _getCurrencyRates();
  }

  Stream<CurrencyRateState> _refreshCurrencyRates() async* {
    if (state is! CurrencyRatesLoaded) return;
    final rates = (state as CurrencyRatesLoaded).rates;
    yield CurrencyRatesRefreshing(rates);
    yield* _getCurrencyRates();
  }

  Stream<CurrencyRateState> _getCurrencyRates() async* {
    try {
      final List<CurrencyRate> rates = await _repository.getCurrencyRates();
      yield CurrencyRatesLoaded(rates);
    } catch (e) {
      yield CurrencyRatesError(e);
      rethrow;
    }
  }
}
