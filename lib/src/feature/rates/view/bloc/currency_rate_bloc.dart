import 'dart:async';

import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/domain/repository/currency_rate_repository.dart';
import 'package:currency_rates/src/feature/rates/view/bloc/currency_rate_event.dart';
import 'package:currency_rates/src/feature/rates/view/bloc/currency_rate_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyRatesBloc extends Bloc<CurrencyRateEvent, CurrencyRateState> {
  final CurrencyRateRepository _repository;
  Timer? _refreshTimer;

  CurrencyRatesBloc(this._repository) : super(const CurrencyRatesLoaded([])) {
    on<CurrencyRatesLoadEvent>((event, emit) async => _loadCurrencyRates(emit));
    on<CurrencyRatesRefreshEvent>(
      (event, emit) async => _refreshCurrencyRatesWhenLoaded(emit),
    );
  }

  void loadCurrencyRates() => add(const CurrencyRatesLoadEvent());

  Future<void> _loadCurrencyRates(Emitter<CurrencyRateState> emit) async {
    try {
      emit(const CurrencyRatesLoading());
      final rates = await _repository.getCurrencyRates();
      emit(CurrencyRatesLoaded(rates));
      _startPeriodicRefreshTimer();
    } catch (e) {
      emit(CurrencyRatesError(e));
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
    if (state is! CurrencyRatesLoaded) return;
    final loadedRates = (state as CurrencyRatesLoaded).rates;
    await _refreshCurrencyRates(emit, loadedRates);
  }

  Future<void> _refreshCurrencyRates(
    Emitter<CurrencyRateState> emit,
    List<CurrencyRate> loadedRates,
  ) async {
    try {
      emit(CurrencyRatesRefreshing(loadedRates));
      final refreshedRates = await _repository.getCurrencyRates();
      emit(CurrencyRatesLoaded(refreshedRates));
    } catch (e) {
      emit(CurrencyRatesLoaded(loadedRates));
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
