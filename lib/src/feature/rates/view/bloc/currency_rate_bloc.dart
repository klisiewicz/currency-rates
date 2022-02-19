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
      : super(const CurrencyRateState.loaded([])) {
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
      emit(CurrencyRateState.loaded(rates));
      _startPeriodicRefreshTimer();
    } catch (e) {
      emit(CurrencyRateState.failure(e));
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
    await state.iswitch(
      loading: () async {},
      loaded: (rates) async => _refreshCurrencyRates(emit, rates),
      refreshing: (rates) async {},
      failure: (error) async {},
    );
  }

  Future<void> _refreshCurrencyRates(
    Emitter<CurrencyRateState> emit,
    List<CurrencyRate> loadedRates,
  ) async {
    try {
      emit(CurrencyRateState.refreshing(loadedRates));
      final refreshedRates = await _repository.getCurrencyRates();
      emit(CurrencyRateState.loaded(refreshedRates));
    } catch (e) {
      emit(CurrencyRateState.loaded(loadedRates));
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
