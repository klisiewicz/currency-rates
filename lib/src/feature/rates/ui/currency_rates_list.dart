import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:flutter/material.dart';

class CurrencyRatesList extends StatelessWidget {
  final List<CurrencyRate> rates;

  const CurrencyRatesList(this.rates, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: rates.length,
      itemBuilder: (context, index) => _CurrencyRateListItem(rates[index]),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

class _CurrencyRateListItem extends StatelessWidget {
  final CurrencyRate rate;

  const _CurrencyRateListItem(
    this.rate, {
    Key key,
  })  : assert(rate != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/${rate.currency.code}.png'),
      ),
      title: Text(rate.currency.code),
      subtitle: Text(rate.currency.name),
      trailing: Text(rate.bid.toStringAsFixed(4)),
    );
  }
}
