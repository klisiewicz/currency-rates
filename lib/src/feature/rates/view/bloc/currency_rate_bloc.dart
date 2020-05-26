import 'dart:async';

import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/domain/repository/currency_rate_repository.dart';
import 'package:currency_rates/src/feature/rates/view/bloc/currency_rate_event.dart';
import 'package:currency_rates/src/feature/rates/view/bloc/currency_rate_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyRatesBloc extends Bloc<CurrencyRateEvent, CurrencyRateState> {
  final CurrencyRateRepository _repository;
  Timer _refreshTimer;

  CurrencyRatesBloc(this._repository)
      : assert(_repository != null),
        super(CurrencyRateState.loaded([]));

  void loadCurrencyRates() => add(CurrencyRateEvent.load());

  @override
  Stream<CurrencyRateState> mapEventToState(CurrencyRateEvent event) async* {
    yield* event.join(
      (load) => _loadCurrencyRates(),
      (refresh) => _refreshCurrencyRatesWhenLoaded(),
    );
  }

  Stream<CurrencyRateState> _loadCurrencyRates() async* {
    try {
      yield CurrencyRateState.loading();
      final List<CurrencyRate> rates = await _repository.getCurrencyRates();
      yield CurrencyRateState.loaded(rates);
      _startPeriodicRatesRefresh();
    } catch (e) {
      yield CurrencyRateState.error(e);
    }
  }

  void _startPeriodicRatesRefresh() {
    _refreshTimer ??= Timer.periodic(
      15.seconds,
      (_) => add(CurrencyRateEvent.refresh()),
    );
  }

  Stream<CurrencyRateState> _refreshCurrencyRatesWhenLoaded() async* {
    yield* state.join(
      (loading) async* {},
      (loaded) => _refreshCurrencyRates(loaded.rates),
      (refreshing) async* {},
      (error) async* {},
    );
  }

  Stream<CurrencyRateState> _refreshCurrencyRates(
    List<CurrencyRate> loadedRates,
  ) async* {
    try {
      yield CurrencyRateState.refreshing(loadedRates);
      final List<CurrencyRate> refreshedRates =
          await _repository.getCurrencyRates();
      yield CurrencyRateState.loaded(refreshedRates);
    } catch (e) {
      yield CurrencyRateState.loaded(loadedRates);
    }
  }

  @override
  Future<void> close() async {
    super.close();
    _refreshTimer?.cancel();
  }
}

extension DurationExt on int {
  Duration get seconds => Duration(seconds: this);
}
