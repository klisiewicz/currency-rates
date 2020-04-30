import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/view/ui/currency_rates_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyRatesList extends StatelessWidget {
  final List<CurrencyRate> rates;
  final bool isRefreshing;

  const CurrencyRatesList(
    this.rates, {
    Key key,
  })  : isRefreshing = false,
        super(key: key);

  const CurrencyRatesList.refreshing(
    this.rates, {
    Key key,
  })  : isRefreshing = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView.separated(
          itemCount: rates.length,
          itemBuilder: (context, index) => CurrencyRateListItem(rates[index]),
          separatorBuilder: (context, index) => const Divider(),
        ),
        if (isRefreshing) const LinearProgressIndicator(),
      ],
    );
  }
}
