import 'dart:async';

import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/domain/repository/currency_rate_repository.dart';
import 'package:currency_rates/src/feature/rates/view/bloc/currency_rate_event.dart';
import 'package:currency_rates/src/feature/rates/view/bloc/currency_rate_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyRatesBloc extends Bloc<CurrencyRateEvent, CurrencyRateState> {
  final CurrencyRateRepository _repository;
  Timer _refreshTimer;

  CurrencyRatesBloc(CurrencyRateRepository repository)
      : assert(repository != null),
        _repository = repository;

  @override
  CurrencyRateState get initialState => const CurrencyRatesLoading();

  List<CurrencyRate> get _loadedRates =>
      (state as CurrencyRatesLoaded)?.rates ?? [];

  void loadCurrencyRates() => add(const CurrencyRatesLoadEvent());

  @override
  Stream<CurrencyRateState> mapEventToState(CurrencyRateEvent event) async* {
    if (event is CurrencyRatesLoadEvent) {
      yield* _loadCurrencyRates();
    } else if (event is CurrencyRatesRefreshEvent) {
      yield* _refreshCurrencyRates();
    }
  }

  Stream<CurrencyRateState> _loadCurrencyRates() async* {
    try {
      yield const CurrencyRatesLoading();
      final List<CurrencyRate> rates = await _repository.getCurrencyRates();
      yield CurrencyRatesLoaded(rates);
      _startPeriodicRatesRefresh();
    } catch (e) {
      yield CurrencyRatesError(e);
    }
  }

  void _startPeriodicRatesRefresh() {
    _refreshTimer ??= Timer.periodic(
      15.seconds,
      (_) => add(const CurrencyRatesRefreshEvent()),
    );
  }

  Stream<CurrencyRateState> _refreshCurrencyRates() async* {
    try {
      if (state is! CurrencyRatesLoaded) return;
      yield CurrencyRatesRefreshing(_loadedRates);
      final List<CurrencyRate> refreshedRates =
          await _repository.getCurrencyRates();
      yield CurrencyRatesLoaded(refreshedRates);
    } catch (e) {
      yield CurrencyRatesLoaded(_loadedRates);
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
