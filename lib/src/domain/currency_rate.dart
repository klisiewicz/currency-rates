import 'package:currency_rates/src/domain/currency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class CurrencyRate extends Equatable {
  final Currency currency;
  final num bid;
  final num ask;

  const CurrencyRate({
    @required this.currency,
    @required this.bid,
    @required this.ask,
  })  : assert(currency != null),
        assert(bid != null && bid > 0),
        assert(ask != null && ask > 0);

  @override
  List<Object> get props => [currency, bid, ask];
}
