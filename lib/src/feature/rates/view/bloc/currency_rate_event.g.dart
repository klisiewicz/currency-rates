// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class CurrencyRateEvent extends Equatable {
  const CurrencyRateEvent(this._type);

  factory CurrencyRateEvent.load() = Load;

  factory CurrencyRateEvent.refresh() = Refresh;

  final _CurrencyRateEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Load) load,
      @required R Function(Refresh) refresh}) {
    assert(() {
      if (load == null || refresh == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _CurrencyRateEvent.Load:
        return load(this as Load);
      case _CurrencyRateEvent.Refresh:
        return refresh(this as Refresh);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(Load) load,
      @required FutureOr<R> Function(Refresh) refresh}) {
    assert(() {
      if (load == null || refresh == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _CurrencyRateEvent.Load:
        return load(this as Load);
      case _CurrencyRateEvent.Refresh:
        return refresh(this as Refresh);
    }
  }

  R whenOrElse<R>(
      {R Function(Load) load,
      R Function(Refresh) refresh,
      @required R Function(CurrencyRateEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _CurrencyRateEvent.Load:
        if (load == null) break;
        return load(this as Load);
      case _CurrencyRateEvent.Refresh:
        if (refresh == null) break;
        return refresh(this as Refresh);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Load) load,
      FutureOr<R> Function(Refresh) refresh,
      @required FutureOr<R> Function(CurrencyRateEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _CurrencyRateEvent.Load:
        if (load == null) break;
        return load(this as Load);
      case _CurrencyRateEvent.Refresh:
        if (refresh == null) break;
        return refresh(this as Refresh);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Load) load,
      FutureOr<void> Function(Refresh) refresh}) {
    assert(() {
      if (load == null && refresh == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _CurrencyRateEvent.Load:
        if (load == null) break;
        return load(this as Load);
      case _CurrencyRateEvent.Refresh:
        if (refresh == null) break;
        return refresh(this as Refresh);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Load extends CurrencyRateEvent {
  const Load._() : super(_CurrencyRateEvent.Load);

  factory Load() {
    _instance ??= const Load._();
    return _instance;
  }

  static Load _instance;
}

@immutable
class Refresh extends CurrencyRateEvent {
  const Refresh._() : super(_CurrencyRateEvent.Refresh);

  factory Refresh() {
    _instance ??= const Refresh._();
    return _instance;
  }

  static Refresh _instance;
}
