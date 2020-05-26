// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'currency_rate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CurrencyRateStateTearOff {
  const _$CurrencyRateStateTearOff();

  Loading loading() {
    return const Loading();
  }

  Loaded loaded(List<CurrencyRate> rates) {
    return Loaded(
      rates,
    );
  }

  Refreshing refreshing(List<CurrencyRate> rates) {
    return Refreshing(
      rates,
    );
  }

  Failure failure(dynamic error) {
    return Failure(
      error,
    );
  }
}

// ignore: unused_element
const $CurrencyRateState = _$CurrencyRateStateTearOff();

mixin _$CurrencyRateState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<CurrencyRate> rates),
    @required Result refreshing(List<CurrencyRate> rates),
    @required Result failure(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<CurrencyRate> rates),
    Result refreshing(List<CurrencyRate> rates),
    Result failure(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result refreshing(Refreshing value),
    @required Result failure(Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result refreshing(Refreshing value),
    Result failure(Failure value),
    @required Result orElse(),
  });
}

abstract class $CurrencyRateStateCopyWith<$Res> {
  factory $CurrencyRateStateCopyWith(
          CurrencyRateState value, $Res Function(CurrencyRateState) then) =
      _$CurrencyRateStateCopyWithImpl<$Res>;
}

class _$CurrencyRateStateCopyWithImpl<$Res>
    implements $CurrencyRateStateCopyWith<$Res> {
  _$CurrencyRateStateCopyWithImpl(this._value, this._then);

  final CurrencyRateState _value;
  // ignore: unused_field
  final $Res Function(CurrencyRateState) _then;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$CurrencyRateStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyRateState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CurrencyRateState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<CurrencyRate> rates),
    @required Result refreshing(List<CurrencyRate> rates),
    @required Result failure(dynamic error),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(refreshing != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<CurrencyRate> rates),
    Result refreshing(List<CurrencyRate> rates),
    Result failure(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result refreshing(Refreshing value),
    @required Result failure(Failure value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(refreshing != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result refreshing(Refreshing value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CurrencyRateState {
  const factory Loading() = _$Loading;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<CurrencyRate> rates});
}

class _$LoadedCopyWithImpl<$Res> extends _$CurrencyRateStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object rates = freezed,
  }) {
    return _then(Loaded(
      rates == freezed ? _value.rates : rates as List<CurrencyRate>,
    ));
  }
}

class _$Loaded with DiagnosticableTreeMixin implements Loaded {
  const _$Loaded(this.rates) : assert(rates != null);

  @override
  final List<CurrencyRate> rates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyRateState.loaded(rates: $rates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrencyRateState.loaded'))
      ..add(DiagnosticsProperty('rates', rates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.rates, rates) ||
                const DeepCollectionEquality().equals(other.rates, rates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rates);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<CurrencyRate> rates),
    @required Result refreshing(List<CurrencyRate> rates),
    @required Result failure(dynamic error),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(refreshing != null);
    assert(failure != null);
    return loaded(rates);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<CurrencyRate> rates),
    Result refreshing(List<CurrencyRate> rates),
    Result failure(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(rates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result refreshing(Refreshing value),
    @required Result failure(Failure value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(refreshing != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result refreshing(Refreshing value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements CurrencyRateState {
  const factory Loaded(List<CurrencyRate> rates) = _$Loaded;

  List<CurrencyRate> get rates;
  $LoadedCopyWith<Loaded> get copyWith;
}

abstract class $RefreshingCopyWith<$Res> {
  factory $RefreshingCopyWith(
          Refreshing value, $Res Function(Refreshing) then) =
      _$RefreshingCopyWithImpl<$Res>;
  $Res call({List<CurrencyRate> rates});
}

class _$RefreshingCopyWithImpl<$Res>
    extends _$CurrencyRateStateCopyWithImpl<$Res>
    implements $RefreshingCopyWith<$Res> {
  _$RefreshingCopyWithImpl(Refreshing _value, $Res Function(Refreshing) _then)
      : super(_value, (v) => _then(v as Refreshing));

  @override
  Refreshing get _value => super._value as Refreshing;

  @override
  $Res call({
    Object rates = freezed,
  }) {
    return _then(Refreshing(
      rates == freezed ? _value.rates : rates as List<CurrencyRate>,
    ));
  }
}

class _$Refreshing with DiagnosticableTreeMixin implements Refreshing {
  const _$Refreshing(this.rates) : assert(rates != null);

  @override
  final List<CurrencyRate> rates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyRateState.refreshing(rates: $rates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrencyRateState.refreshing'))
      ..add(DiagnosticsProperty('rates', rates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Refreshing &&
            (identical(other.rates, rates) ||
                const DeepCollectionEquality().equals(other.rates, rates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rates);

  @override
  $RefreshingCopyWith<Refreshing> get copyWith =>
      _$RefreshingCopyWithImpl<Refreshing>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<CurrencyRate> rates),
    @required Result refreshing(List<CurrencyRate> rates),
    @required Result failure(dynamic error),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(refreshing != null);
    assert(failure != null);
    return refreshing(rates);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<CurrencyRate> rates),
    Result refreshing(List<CurrencyRate> rates),
    Result failure(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshing != null) {
      return refreshing(rates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result refreshing(Refreshing value),
    @required Result failure(Failure value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(refreshing != null);
    assert(failure != null);
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result refreshing(Refreshing value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class Refreshing implements CurrencyRateState {
  const factory Refreshing(List<CurrencyRate> rates) = _$Refreshing;

  List<CurrencyRate> get rates;
  $RefreshingCopyWith<Refreshing> get copyWith;
}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

class _$FailureCopyWithImpl<$Res> extends _$CurrencyRateStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(Failure(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

class _$Failure with DiagnosticableTreeMixin implements Failure {
  const _$Failure(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyRateState.failure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrencyRateState.failure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<CurrencyRate> rates),
    @required Result refreshing(List<CurrencyRate> rates),
    @required Result failure(dynamic error),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(refreshing != null);
    assert(failure != null);
    return failure(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<CurrencyRate> rates),
    Result refreshing(List<CurrencyRate> rates),
    Result failure(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result refreshing(Refreshing value),
    @required Result failure(Failure value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(refreshing != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result refreshing(Refreshing value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements CurrencyRateState {
  const factory Failure(dynamic error) = _$Failure;

  dynamic get error;
  $FailureCopyWith<Failure> get copyWith;
}
