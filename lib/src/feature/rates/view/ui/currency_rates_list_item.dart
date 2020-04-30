import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:flutter/material.dart';

class CurrencyRateListItem extends StatelessWidget {
  final CurrencyRate rate;

  const CurrencyRateListItem(
    this.rate, {
    Key key,
  })  : assert(rate != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _CurrencyFlag(rate.currency.code),
      title: Text(rate.currency.code),
      subtitle: Text(rate.currency.name),
      trailing: _CurrencyRatePrice(bid: rate.bid, ask: rate.ask),
    );
  }
}

class _CurrencyFlag extends StatelessWidget {
  final String currencyCode;

  const _CurrencyFlag(
    this.currencyCode, {
    Key key,
  })  : assert(currencyCode != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).backgroundColor,
      child: CircleAvatar(
        radius: 16,
        backgroundImage: AssetImage('assets/images/$currencyCode.png'),
      ),
    );
  }
}

class _CurrencyRatePrice extends StatelessWidget {
  final num bid;
  final num ask;

  const _CurrencyRatePrice({
    Key key,
    @required this.bid,
    @required this.ask,
  })  : assert(bid != null),
        assert(ask != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(bid.toStringAsFixed(4)),
        const SizedBox(width: 16),
        Text(ask.toStringAsFixed(4)),
      ],
    );
  }
}
