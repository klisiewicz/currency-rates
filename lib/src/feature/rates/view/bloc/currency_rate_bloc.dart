import 'dart:async';

import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/domain/repository/currency_rate_repository.dart';
import 'package:currency_rates/src/feature/rates/view/bloc/currency_rate_event.dart';
import 'package:currency_rates/src/feature/rates/view/bloc/currency_rate_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyRatesBloc extends Bloc<CurrencyRateEvent, CurrencyRateState> {
  final CurrencyRateRepository _repository;
  Timer? _refreshTimer;

  CurrencyRatesBloc(this._repository)
      : super(const CurrencyRateState.loaded(rates: [])) {
    on<CurrencyRatesLoadEvent>((event, emit) async => _loadCurrencyRates(emit));
    on<CurrencyRatesRefreshEvent>(
      (event, emit) async => _refreshCurrencyRatesWhenLoaded(emit),
    );
  }

  void loadCurrencyRates() => add(const CurrencyRatesLoadEvent());

  Future<void> _loadCurrencyRates(Emitter<CurrencyRateState> emit) async {
    try {
      emit(const CurrencyRateState.loading());
      final rates = await _repository.getCurrencyRates();
      emit(CurrencyRateState.loaded(rates: rates));
      _startPeriodicRefreshTimer();
    } catch (error) {
      emit(CurrencyRateState.error(error: error));
    }
  }

  void _startPeriodicRefreshTimer() {
    _refreshTimer ??= Timer.periodic(
      15.seconds,
      (_) => add(const CurrencyRatesRefreshEvent()),
    );
  }

  Future<void> _refreshCurrencyRatesWhenLoaded(
    Emitter<CurrencyRateState> emit,
  ) async {
    await state.maybeWhen(
      loaded: (rates) async => _refreshCurrencyRates(emit, rates),
      orElse: (_) {},
    );
  }

  Future<void> _refreshCurrencyRates(
    Emitter<CurrencyRateState> emit,
    List<CurrencyRate> loadedRates,
  ) async {
    try {
      emit(CurrencyRateState.refreshing(rates: loadedRates));
      final refreshedRates = await _repository.getCurrencyRates();
      emit(CurrencyRateState.loaded(rates: refreshedRates));
    } catch (e) {
      emit(CurrencyRateState.loaded(rates: loadedRates));
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
