import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/domain/entity/price.dart';
import 'package:flutter/material.dart';

class CurrencyRateListItem extends StatelessWidget {
  final CurrencyRate rate;

  const CurrencyRateListItem(
    this.rate, {
    Key? key,
  }) : super(key: key);

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
    Key? key,
  }) : super(key: key);

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
  final Price bid;
  final Price ask;

  const _CurrencyRatePrice({
    required this.bid,
    required this.ask,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('$bid'),
        const SizedBox(width: 16),
        Text('$ask'),
      ],
    );
  }
}
