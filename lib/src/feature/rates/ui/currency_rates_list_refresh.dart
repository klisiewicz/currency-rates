import 'dart:async';

import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/ui/currency_rates_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyRatesListRefresh extends StatefulWidget {
  final List<CurrencyRate> rates;
  final VoidCallback onRefresh;

  const CurrencyRatesListRefresh(
    this.rates, {
    Key key,
    this.onRefresh,
  }) : super(key: key);

  @override
  _CurrencyRatesListRefreshState createState() =>
      _CurrencyRatesListRefreshState();
}

class _CurrencyRatesListRefreshState extends State<CurrencyRatesListRefresh> {
  Completer<void> _refreshCompleter = Completer();

  @override
  Widget build(BuildContext context) {
    _refreshCompleter?.complete();
    _refreshCompleter = Completer();

    return RefreshIndicator(
      onRefresh: _refresh,
      child: CurrencyRatesList(widget.rates),
    );
  }

  Future<void> _refresh() {
    widget.onRefresh?.call();
    return _refreshCompleter.future;
  }

  @override
  void dispose() {
    _refreshCompleter?.complete();
    super.dispose();
  }
}
