// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate_event.dart';

// **************************************************************************
// SumTypesGenerator
// **************************************************************************

abstract class _$CurrencyRateEvent {
  const _$CurrencyRateEvent({
    this.fetch,
    this.refresh,
  }) : assert(fetch != null && refresh == null ||
            fetch == null && refresh != null);
  static CurrencyRateEvent load<$T extends CurrencyRateEventRecordBase<$T>>(
    $T rec,
  ) {
    if (rec.fetch != null && rec.refresh == null) {
      return const CurrencyRateEvent.fetch();
    } else if (rec.fetch == null && rec.refresh != null) {
      return const CurrencyRateEvent.refresh();
    } else {
      throw Exception("Cannot select a $CurrencyRateEvent case given $rec");
    }
  }

  $T dump<$T>(
    $T Function({
      Unit fetch,
      Unit refresh,
    })
        make,
  ) {
    return iswitch(
      fetch: () => make(fetch: const Unit()),
      refresh: () => make(refresh: const Unit()),
    );
  }

  $T iswitch<$T>({
    @required $T Function() fetch,
    @required $T Function() refresh,
  }) {
    if (this.fetch != null) {
      return fetch();
    } else if (this.refresh != null) {
      return refresh();
    } else {
      throw StateError(
          "an instance of $CurrencyRateEvent has no case selected");
    }
  }

  $T iswitcho<$T>({
    $T Function() fetch,
    $T Function() refresh,
    @required $T Function() otherwise,
  }) {
    $T _otherwise(Object _) => otherwise();
    return iswitch(
      fetch: fetch ?? otherwise,
      refresh: refresh ?? otherwise,
    );
  }

  @override
  bool operator ==(
    dynamic other,
  ) {
    return other.runtimeType == runtimeType &&
        other.fetch == fetch &&
        other.refresh == refresh;
  }

  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + fetch.hashCode;
    result = 37 * result + refresh.hashCode;
    return result;
  }

  @override
  String toString() {
    final ctor = iswitch(
      fetch: () => "fetch()",
      refresh: () => "refresh()",
    );
    return "$runtimeType.$ctor";
  }

  @protected
  final Unit fetch;
  @protected
  final Unit refresh;
}

abstract class CurrencyRateEventRecordBase<Self> {
  Unit get fetch;
  Unit get refresh;
}
