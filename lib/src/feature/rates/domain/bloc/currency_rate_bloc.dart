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

  void loadCurrencyRates() => add(const LoadCurrencyRatesEvent());

  @override
  Stream<CurrencyRateState> mapEventToState(CurrencyRateEvent event) async* {
    if (event is LoadCurrencyRatesEvent) {
      yield* _loadCurrencyRates();
    }
  }

  Stream<CurrencyRateState> _loadCurrencyRates() async* {
    try {
      yield const CurrencyRatesLoading();
      final List<CurrencyRate> rates = await _repository.getCurrencyRates();
      yield CurrencyRatesLoaded(rates);
    } catch (e) {
      yield CurrencyRatesError(e);
      rethrow;
    }
  }
}
