// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate_state.dart';

// **************************************************************************
// SumTypesGenerator
// **************************************************************************

abstract class _$CurrencyRateState {
  const _$CurrencyRateState({
    this.loading,
    this.loaded,
    this.refreshing,
    this.failure,
  }) : assert(loading != null &&
                loaded == null &&
                refreshing == null &&
                failure == null ||
            loading == null &&
                loaded != null &&
                refreshing == null &&
                failure == null ||
            loading == null &&
                loaded == null &&
                refreshing != null &&
                failure == null ||
            loading == null &&
                loaded == null &&
                refreshing == null &&
                failure != null);
  static CurrencyRateState load<$T extends CurrencyRateStateRecordBase<$T>>(
    $T rec,
  ) {
    if (rec.loading != null &&
        rec.loaded == null &&
        rec.refreshing == null &&
        rec.failure == null) {
      return const CurrencyRateState.loading();
    } else if (rec.loading == null &&
        rec.loaded != null &&
        rec.refreshing == null &&
        rec.failure == null) {
      return CurrencyRateState.loaded(rec.loaded!);
    } else if (rec.loading == null &&
        rec.loaded == null &&
        rec.refreshing != null &&
        rec.failure == null) {
      return CurrencyRateState.refreshing(rec.refreshing!);
    } else if (rec.loading == null &&
        rec.loaded == null &&
        rec.refreshing == null &&
        rec.failure != null) {
      return CurrencyRateState.failure(rec.failure!);
    } else {
      throw Exception("Cannot select a $CurrencyRateState case given $rec");
    }
  }

  $T dump<$T>(
    $T Function({
      Unit? loading,
      List<CurrencyRate>? loaded,
      List<CurrencyRate>? refreshing,
      Object? failure,
    })
        make,
  ) {
    return iswitch(
      loading: () => make(loading: const Unit()),
      loaded: (loaded) => make(loaded: loaded),
      refreshing: (refreshing) => make(refreshing: refreshing),
      failure: (failure) => make(failure: failure),
    );
  }

  $T iswitch<$T>({
    required $T Function() loading,
    required $T Function(List<CurrencyRate>) loaded,
    required $T Function(List<CurrencyRate>) refreshing,
    required $T Function(Object) failure,
  }) {
    if (this.loading != null) {
      return loading();
    } else if (this.loaded != null) {
      return loaded(this.loaded!);
    } else if (this.refreshing != null) {
      return refreshing(this.refreshing!);
    } else if (this.failure != null) {
      return failure(this.failure!);
    } else {
      throw StateError(
          "an instance of $CurrencyRateState has no case selected");
    }
  }

  $T iswitcho<$T>({
    $T Function()? loading,
    $T Function(List<CurrencyRate>)? loaded,
    $T Function(List<CurrencyRate>)? refreshing,
    $T Function(Object)? failure,
    required $T Function() otherwise,
  }) {
    $T _otherwise(Object? _) => otherwise();
    return iswitch(
      loading: loading ?? otherwise,
      loaded: loaded ?? _otherwise,
      refreshing: refreshing ?? _otherwise,
      failure: failure ?? _otherwise,
    );
  }

  @override
  bool operator ==(
    dynamic other,
  ) {
    return other.runtimeType == runtimeType &&
        other.loading == loading &&
        other.loaded == loaded &&
        other.refreshing == refreshing &&
        other.failure == failure;
  }

  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + loading.hashCode;
    result = 37 * result + loaded.hashCode;
    result = 37 * result + refreshing.hashCode;
    result = 37 * result + failure.hashCode;
    return result;
  }

  @override
  String toString() {
    final ctor = iswitch(
      loading: () => "loading()",
      loaded: (value) => "loaded($value)",
      refreshing: (value) => "refreshing($value)",
      failure: (value) => "failure($value)",
    );
    return "$runtimeType.$ctor";
  }

  @protected
  final Unit? loading;
  @protected
  final List<CurrencyRate>? loaded;
  @protected
  final List<CurrencyRate>? refreshing;
  @protected
  final Object? failure;
}

abstract class CurrencyRateStateRecordBase<Self> {
  Unit? get loading;
  List<CurrencyRate>? get loaded;
  List<CurrencyRate>? get refreshing;
  Object? get failure;
}
