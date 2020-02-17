import 'package:currency_rates/src/domain/currency_rate.dart';
import 'package:currency_rates/src/domain/currency_rate_repository.dart';
import 'package:currency_rates/src/domain/currency_rate_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class _LoadCurrencyRatesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CurrencyRatesBloc
    extends Bloc<_LoadCurrencyRatesEvent, CurrencyRateState> {
  final CurrencyRateRepository _repository;

  CurrencyRatesBloc(CurrencyRateRepository repository)
      : assert(repository != null),
        _repository = repository;

  @override
  CurrencyRateState get initialState => CurrencyRatesBusy();

  void loadCurrencyRates() => add(_LoadCurrencyRatesEvent());

  @override
  Stream<CurrencyRateState> mapEventToState(
      _LoadCurrencyRatesEvent event) async* {
    try {
      yield CurrencyRatesBusy();
      final List<CurrencyRate> rates = await _repository.getCurrencyRates();
      yield CurrencyRatesReady(rates);
    } catch (e) {
      yield CurrencyRatesError(e);
      rethrow;
    }
  }
}
