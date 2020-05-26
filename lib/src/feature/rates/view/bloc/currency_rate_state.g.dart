// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class CurrencyRateState extends Equatable {
  const CurrencyRateState(this._type);

  factory CurrencyRateState.loading() = Loading;

  factory CurrencyRateState.loaded({@required List<CurrencyRate> rates}) =
      Loaded;

  factory CurrencyRateState.refreshing({@required List<CurrencyRate> rates}) =
      Refreshing;

  factory CurrencyRateState.failure({@required dynamic error}) = Failure;

  final _CurrencyRateState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Loading) loading,
      @required R Function(Loaded) loaded,
      @required R Function(Refreshing) refreshing,
      @required R Function(Failure) failure}) {
    assert(() {
      if (loading == null ||
          loaded == null ||
          refreshing == null ||
          failure == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _CurrencyRateState.Loading:
        return loading(this as Loading);
      case _CurrencyRateState.Loaded:
        return loaded(this as Loaded);
      case _CurrencyRateState.Refreshing:
        return refreshing(this as Refreshing);
      case _CurrencyRateState.Failure:
        return failure(this as Failure);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(Loading) loading,
      @required FutureOr<R> Function(Loaded) loaded,
      @required FutureOr<R> Function(Refreshing) refreshing,
      @required FutureOr<R> Function(Failure) failure}) {
    assert(() {
      if (loading == null ||
          loaded == null ||
          refreshing == null ||
          failure == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _CurrencyRateState.Loading:
        return loading(this as Loading);
      case _CurrencyRateState.Loaded:
        return loaded(this as Loaded);
      case _CurrencyRateState.Refreshing:
        return refreshing(this as Refreshing);
      case _CurrencyRateState.Failure:
        return failure(this as Failure);
    }
  }

  R whenOrElse<R>(
      {R Function(Loading) loading,
      R Function(Loaded) loaded,
      R Function(Refreshing) refreshing,
      R Function(Failure) failure,
      @required R Function(CurrencyRateState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _CurrencyRateState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _CurrencyRateState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _CurrencyRateState.Refreshing:
        if (refreshing == null) break;
        return refreshing(this as Refreshing);
      case _CurrencyRateState.Failure:
        if (failure == null) break;
        return failure(this as Failure);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Loading) loading,
      FutureOr<R> Function(Loaded) loaded,
      FutureOr<R> Function(Refreshing) refreshing,
      FutureOr<R> Function(Failure) failure,
      @required FutureOr<R> Function(CurrencyRateState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _CurrencyRateState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _CurrencyRateState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _CurrencyRateState.Refreshing:
        if (refreshing == null) break;
        return refreshing(this as Refreshing);
      case _CurrencyRateState.Failure:
        if (failure == null) break;
        return failure(this as Failure);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Loading) loading,
      FutureOr<void> Function(Loaded) loaded,
      FutureOr<void> Function(Refreshing) refreshing,
      FutureOr<void> Function(Failure) failure}) {
    assert(() {
      if (loading == null &&
          loaded == null &&
          refreshing == null &&
          failure == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _CurrencyRateState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _CurrencyRateState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _CurrencyRateState.Refreshing:
        if (refreshing == null) break;
        return refreshing(this as Refreshing);
      case _CurrencyRateState.Failure:
        if (failure == null) break;
        return failure(this as Failure);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Loading extends CurrencyRateState {
  const Loading._() : super(_CurrencyRateState.Loading);

  factory Loading() {
    _instance ??= const Loading._();
    return _instance;
  }

  static Loading _instance;
}

@immutable
class Loaded extends CurrencyRateState {
  const Loaded({@required this.rates}) : super(_CurrencyRateState.Loaded);

  final List<CurrencyRate> rates;

  @override
  String toString() => 'Loaded(rates:${this.rates})';
  @override
  List get props => [rates];
}

@immutable
class Refreshing extends CurrencyRateState {
  const Refreshing({@required this.rates})
      : super(_CurrencyRateState.Refreshing);

  final List<CurrencyRate> rates;

  @override
  String toString() => 'Refreshing(rates:${this.rates})';
  @override
  List get props => [rates];
}

@immutable
class Failure extends CurrencyRateState {
  const Failure({@required this.error}) : super(_CurrencyRateState.Failure);

  final dynamic error;

  @override
  String toString() => 'Failure(error:${this.error})';
  @override
  List get props => [error];
}
