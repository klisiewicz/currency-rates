// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate_state.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [CurrencyRateState] {
///
/// ([CurrencyRateStateLoading] loading){} with data equality
///
/// ([CurrencyRateStateLoaded] loaded){[List<CurrencyRate>] rates} with data equality
///
/// ([CurrencyRateStateRefreshing] refreshing){[List<CurrencyRate>] rates} with data equality
///
/// ([CurrencyRateStateError] error){[Object] error} with data equality
///
/// }
@SealedManifest(_CurrencyRateState)
abstract class CurrencyRateState {
  const CurrencyRateState._internal();

  const factory CurrencyRateState.loading() = CurrencyRateStateLoading;

  const factory CurrencyRateState.loaded({
    required List<CurrencyRate> rates,
  }) = CurrencyRateStateLoaded;

  const factory CurrencyRateState.refreshing({
    required List<CurrencyRate> rates,
  }) = CurrencyRateStateRefreshing;

  const factory CurrencyRateState.error({
    required Object error,
  }) = CurrencyRateStateError;

  bool get isLoading => this is CurrencyRateStateLoading;

  bool get isLoaded => this is CurrencyRateStateLoaded;

  bool get isRefreshing => this is CurrencyRateStateRefreshing;

  bool get isError => this is CurrencyRateStateError;

  CurrencyRateStateLoading get asLoading => this as CurrencyRateStateLoading;

  CurrencyRateStateLoaded get asLoaded => this as CurrencyRateStateLoaded;

  CurrencyRateStateRefreshing get asRefreshing =>
      this as CurrencyRateStateRefreshing;

  CurrencyRateStateError get asError => this as CurrencyRateStateError;

  CurrencyRateStateLoading? get asLoadingOrNull {
    final currencyRateState = this;
    return currencyRateState is CurrencyRateStateLoading
        ? currencyRateState
        : null;
  }

  CurrencyRateStateLoaded? get asLoadedOrNull {
    final currencyRateState = this;
    return currencyRateState is CurrencyRateStateLoaded
        ? currencyRateState
        : null;
  }

  CurrencyRateStateRefreshing? get asRefreshingOrNull {
    final currencyRateState = this;
    return currencyRateState is CurrencyRateStateRefreshing
        ? currencyRateState
        : null;
  }

  CurrencyRateStateError? get asErrorOrNull {
    final currencyRateState = this;
    return currencyRateState is CurrencyRateStateError
        ? currencyRateState
        : null;
  }

  R when<R extends Object?>({
    required R Function() loading,
    required R Function(List<CurrencyRate> rates) loaded,
    required R Function(List<CurrencyRate> rates) refreshing,
    required R Function(Object error) error,
  }) {
    final currencyRateState = this;
    if (currencyRateState is CurrencyRateStateLoading) {
      return loading();
    } else if (currencyRateState is CurrencyRateStateLoaded) {
      return loaded(currencyRateState.rates);
    } else if (currencyRateState is CurrencyRateStateRefreshing) {
      return refreshing(currencyRateState.rates);
    } else if (currencyRateState is CurrencyRateStateError) {
      return error(currencyRateState.error);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? loading,
    R Function(List<CurrencyRate> rates)? loaded,
    R Function(List<CurrencyRate> rates)? refreshing,
    R Function(Object error)? error,
    required R Function(CurrencyRateState currencyRateState) orElse,
  }) {
    final currencyRateState = this;
    if (currencyRateState is CurrencyRateStateLoading) {
      return loading != null ? loading() : orElse(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateLoaded) {
      return loaded != null
          ? loaded(currencyRateState.rates)
          : orElse(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateRefreshing) {
      return refreshing != null
          ? refreshing(currencyRateState.rates)
          : orElse(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateError) {
      return error != null
          ? error(currencyRateState.error)
          : orElse(currencyRateState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? loading,
    void Function(List<CurrencyRate> rates)? loaded,
    void Function(List<CurrencyRate> rates)? refreshing,
    void Function(Object error)? error,
    void Function(CurrencyRateState currencyRateState)? orElse,
  }) {
    final currencyRateState = this;
    if (currencyRateState is CurrencyRateStateLoading) {
      if (loading != null) {
        loading();
      } else if (orElse != null) {
        orElse(currencyRateState);
      }
    } else if (currencyRateState is CurrencyRateStateLoaded) {
      if (loaded != null) {
        loaded(currencyRateState.rates);
      } else if (orElse != null) {
        orElse(currencyRateState);
      }
    } else if (currencyRateState is CurrencyRateStateRefreshing) {
      if (refreshing != null) {
        refreshing(currencyRateState.rates);
      } else if (orElse != null) {
        orElse(currencyRateState);
      }
    } else if (currencyRateState is CurrencyRateStateError) {
      if (error != null) {
        error(currencyRateState.error);
      } else if (orElse != null) {
        orElse(currencyRateState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? loading,
    R Function(List<CurrencyRate> rates)? loaded,
    R Function(List<CurrencyRate> rates)? refreshing,
    R Function(Object error)? error,
    R Function(CurrencyRateState currencyRateState)? orElse,
  }) {
    final currencyRateState = this;
    if (currencyRateState is CurrencyRateStateLoading) {
      return loading != null ? loading() : orElse?.call(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateLoaded) {
      return loaded != null
          ? loaded(currencyRateState.rates)
          : orElse?.call(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateRefreshing) {
      return refreshing != null
          ? refreshing(currencyRateState.rates)
          : orElse?.call(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateError) {
      return error != null
          ? error(currencyRateState.error)
          : orElse?.call(currencyRateState);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(CurrencyRateStateLoading loading) loading,
    required R Function(CurrencyRateStateLoaded loaded) loaded,
    required R Function(CurrencyRateStateRefreshing refreshing) refreshing,
    required R Function(CurrencyRateStateError error) error,
  }) {
    final currencyRateState = this;
    if (currencyRateState is CurrencyRateStateLoading) {
      return loading(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateLoaded) {
      return loaded(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateRefreshing) {
      return refreshing(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateError) {
      return error(currencyRateState);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(CurrencyRateStateLoading loading)? loading,
    R Function(CurrencyRateStateLoaded loaded)? loaded,
    R Function(CurrencyRateStateRefreshing refreshing)? refreshing,
    R Function(CurrencyRateStateError error)? error,
    required R Function(CurrencyRateState currencyRateState) orElse,
  }) {
    final currencyRateState = this;
    if (currencyRateState is CurrencyRateStateLoading) {
      return loading != null
          ? loading(currencyRateState)
          : orElse(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateLoaded) {
      return loaded != null
          ? loaded(currencyRateState)
          : orElse(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateRefreshing) {
      return refreshing != null
          ? refreshing(currencyRateState)
          : orElse(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateError) {
      return error != null
          ? error(currencyRateState)
          : orElse(currencyRateState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(CurrencyRateStateLoading loading)? loading,
    void Function(CurrencyRateStateLoaded loaded)? loaded,
    void Function(CurrencyRateStateRefreshing refreshing)? refreshing,
    void Function(CurrencyRateStateError error)? error,
    void Function(CurrencyRateState currencyRateState)? orElse,
  }) {
    final currencyRateState = this;
    if (currencyRateState is CurrencyRateStateLoading) {
      if (loading != null) {
        loading(currencyRateState);
      } else if (orElse != null) {
        orElse(currencyRateState);
      }
    } else if (currencyRateState is CurrencyRateStateLoaded) {
      if (loaded != null) {
        loaded(currencyRateState);
      } else if (orElse != null) {
        orElse(currencyRateState);
      }
    } else if (currencyRateState is CurrencyRateStateRefreshing) {
      if (refreshing != null) {
        refreshing(currencyRateState);
      } else if (orElse != null) {
        orElse(currencyRateState);
      }
    } else if (currencyRateState is CurrencyRateStateError) {
      if (error != null) {
        error(currencyRateState);
      } else if (orElse != null) {
        orElse(currencyRateState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(CurrencyRateStateLoading loading)? loading,
    R Function(CurrencyRateStateLoaded loaded)? loaded,
    R Function(CurrencyRateStateRefreshing refreshing)? refreshing,
    R Function(CurrencyRateStateError error)? error,
    R Function(CurrencyRateState currencyRateState)? orElse,
  }) {
    final currencyRateState = this;
    if (currencyRateState is CurrencyRateStateLoading) {
      return loading != null
          ? loading(currencyRateState)
          : orElse?.call(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateLoaded) {
      return loaded != null
          ? loaded(currencyRateState)
          : orElse?.call(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateRefreshing) {
      return refreshing != null
          ? refreshing(currencyRateState)
          : orElse?.call(currencyRateState);
    } else if (currencyRateState is CurrencyRateStateError) {
      return error != null
          ? error(currencyRateState)
          : orElse?.call(currencyRateState);
    } else {
      throw AssertionError();
    }
  }
}

/// (([CurrencyRateStateLoading] : [CurrencyRateState]) loading){}
///
/// with data equality
class CurrencyRateStateLoading extends CurrencyRateState with EquatableMixin {
  const CurrencyRateStateLoading() : super._internal();

  @override
  String toString() => 'CurrencyRateState.loading()';

  @override
  List<Object?> get props => [];
}

/// (([CurrencyRateStateLoaded] : [CurrencyRateState]) loaded){[List<CurrencyRate>] rates}
///
/// with data equality
class CurrencyRateStateLoaded extends CurrencyRateState with EquatableMixin {
  const CurrencyRateStateLoaded({
    required this.rates,
  }) : super._internal();

  final List<CurrencyRate> rates;

  @override
  String toString() => 'CurrencyRateState.loaded(rates: $rates)';

  @override
  List<Object?> get props => [
        rates,
      ];
}

/// (([CurrencyRateStateRefreshing] : [CurrencyRateState]) refreshing){[List<CurrencyRate>] rates}
///
/// with data equality
class CurrencyRateStateRefreshing extends CurrencyRateState
    with EquatableMixin {
  const CurrencyRateStateRefreshing({
    required this.rates,
  }) : super._internal();

  final List<CurrencyRate> rates;

  @override
  String toString() => 'CurrencyRateState.refreshing(rates: $rates)';

  @override
  List<Object?> get props => [
        rates,
      ];
}

/// (([CurrencyRateStateError] : [CurrencyRateState]) error){[Object] error}
///
/// with data equality
class CurrencyRateStateError extends CurrencyRateState with EquatableMixin {
  const CurrencyRateStateError({
    required this.error,
  }) : super._internal();

  final Object error;

  @override
  String toString() => 'CurrencyRateState.error(error: $error)';

  @override
  List<Object?> get props => [
        error,
      ];
}
