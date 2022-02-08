import 'package:currency_rates/src/feature/rates/domain/entity/currency.dart';
import 'package:currency_rates/src/feature/rates/domain/entity/price.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CurrencyRate with EquatableMixin {
  final Currency currency;
  final Price bid;
  final Price ask;

  CurrencyRate({
    required this.currency,
    required this.bid,
    required this.ask,
  });

  @override
  List<Object> get props => [currency, bid, ask];
}
