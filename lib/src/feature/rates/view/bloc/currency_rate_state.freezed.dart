// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_rate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
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

  Failure failure(Object error) {
    return Failure(
      error,
    );
  }
}

/// @nodoc
const $CurrencyRateState = _$CurrencyRateStateTearOff();

/// @nodoc
mixin _$CurrencyRateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CurrencyRate> rates) loaded,
    required TResult Function(List<CurrencyRate> rates) refreshing,
    required TResult Function(Object error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyRate> rates)? loaded,
    TResult Function(List<CurrencyRate> rates)? refreshing,
    TResult Function(Object error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyRate> rates)? loaded,
    TResult Function(List<CurrencyRate> rates)? refreshing,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Refreshing value) refreshing,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Refreshing value)? refreshing,
    TResult Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Refreshing value)? refreshing,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyRateStateCopyWith<$Res> {
  factory $CurrencyRateStateCopyWith(
          CurrencyRateState value, $Res Function(CurrencyRateState) then) =
      _$CurrencyRateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrencyRateStateCopyWithImpl<$Res>
    implements $CurrencyRateStateCopyWith<$Res> {
  _$CurrencyRateStateCopyWithImpl(this._value, this._then);

  final CurrencyRateState _value;
  // ignore: unused_field
  final $Res Function(CurrencyRateState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$CurrencyRateStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CurrencyRate> rates) loaded,
    required TResult Function(List<CurrencyRate> rates) refreshing,
    required TResult Function(Object error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyRate> rates)? loaded,
    TResult Function(List<CurrencyRate> rates)? refreshing,
    TResult Function(Object error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyRate> rates)? loaded,
    TResult Function(List<CurrencyRate> rates)? refreshing,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Refreshing value) refreshing,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Refreshing value)? refreshing,
    TResult Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Refreshing value)? refreshing,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CurrencyRateState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<CurrencyRate> rates});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$CurrencyRateStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? rates = freezed,
  }) {
    return _then(Loaded(
      rates == freezed
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<CurrencyRate>,
    ));
  }
}

/// @nodoc

class _$Loaded with DiagnosticableTreeMixin implements Loaded {
  const _$Loaded(this.rates);

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
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            const DeepCollectionEquality().equals(other.rates, rates));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rates));

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CurrencyRate> rates) loaded,
    required TResult Function(List<CurrencyRate> rates) refreshing,
    required TResult Function(Object error) failure,
  }) {
    return loaded(rates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyRate> rates)? loaded,
    TResult Function(List<CurrencyRate> rates)? refreshing,
    TResult Function(Object error)? failure,
  }) {
    return loaded?.call(rates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyRate> rates)? loaded,
    TResult Function(List<CurrencyRate> rates)? refreshing,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(rates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Refreshing value) refreshing,
    required TResult Function(Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Refreshing value)? refreshing,
    TResult Function(Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Refreshing value)? refreshing,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements CurrencyRateState {
  const factory Loaded(List<CurrencyRate> rates) = _$Loaded;

  List<CurrencyRate> get rates;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshingCopyWith<$Res> {
  factory $RefreshingCopyWith(
          Refreshing value, $Res Function(Refreshing) then) =
      _$RefreshingCopyWithImpl<$Res>;
  $Res call({List<CurrencyRate> rates});
}

/// @nodoc
class _$RefreshingCopyWithImpl<$Res>
    extends _$CurrencyRateStateCopyWithImpl<$Res>
    implements $RefreshingCopyWith<$Res> {
  _$RefreshingCopyWithImpl(Refreshing _value, $Res Function(Refreshing) _then)
      : super(_value, (v) => _then(v as Refreshing));

  @override
  Refreshing get _value => super._value as Refreshing;

  @override
  $Res call({
    Object? rates = freezed,
  }) {
    return _then(Refreshing(
      rates == freezed
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<CurrencyRate>,
    ));
  }
}

/// @nodoc

class _$Refreshing with DiagnosticableTreeMixin implements Refreshing {
  const _$Refreshing(this.rates);

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
        (other.runtimeType == runtimeType &&
            other is Refreshing &&
            const DeepCollectionEquality().equals(other.rates, rates));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rates));

  @JsonKey(ignore: true)
  @override
  $RefreshingCopyWith<Refreshing> get copyWith =>
      _$RefreshingCopyWithImpl<Refreshing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CurrencyRate> rates) loaded,
    required TResult Function(List<CurrencyRate> rates) refreshing,
    required TResult Function(Object error) failure,
  }) {
    return refreshing(rates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyRate> rates)? loaded,
    TResult Function(List<CurrencyRate> rates)? refreshing,
    TResult Function(Object error)? failure,
  }) {
    return refreshing?.call(rates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyRate> rates)? loaded,
    TResult Function(List<CurrencyRate> rates)? refreshing,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(rates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Refreshing value) refreshing,
    required TResult Function(Failure value) failure,
  }) {
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Refreshing value)? refreshing,
    TResult Function(Failure value)? failure,
  }) {
    return refreshing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Refreshing value)? refreshing,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class Refreshing implements CurrencyRateState {
  const factory Refreshing(List<CurrencyRate> rates) = _$Refreshing;

  List<CurrencyRate> get rates;
  @JsonKey(ignore: true)
  $RefreshingCopyWith<Refreshing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$CurrencyRateStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Failure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$Failure with DiagnosticableTreeMixin implements Failure {
  const _$Failure(this.error);

  @override
  final Object error;

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
        (other.runtimeType == runtimeType &&
            other is Failure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CurrencyRate> rates) loaded,
    required TResult Function(List<CurrencyRate> rates) refreshing,
    required TResult Function(Object error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyRate> rates)? loaded,
    TResult Function(List<CurrencyRate> rates)? refreshing,
    TResult Function(Object error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyRate> rates)? loaded,
    TResult Function(List<CurrencyRate> rates)? refreshing,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Refreshing value) refreshing,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Refreshing value)? refreshing,
    TResult Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Refreshing value)? refreshing,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements CurrencyRateState {
  const factory Failure(Object error) = _$Failure;

  Object get error;
  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}
