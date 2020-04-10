import 'package:currency_rates/src/feature/rates/domain/bloc/currency_rate_bloc.dart';
import 'package:currency_rates/src/feature/rates/domain/bloc/currency_rate_state.dart';
import 'package:currency_rates/src/feature/rates/ui/currency_rates_list_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyRatesPage extends StatefulWidget {
  @override
  _CurrencyRatesPageState createState() => _CurrencyRatesPageState();
}

class _CurrencyRatesPageState extends State<CurrencyRatesPage> {
  CurrencyRatesBloc _currencyRatesBloc;

  @override
  void initState() {
    super.initState();
    _currencyRatesBloc = BlocProvider.of<CurrencyRatesBloc>(context)
      ..loadCurrencyRates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kursy Walut'),
        elevation: 0,
      ),
      body: BlocBuilder<CurrencyRatesBloc, CurrencyRateState>(
        builder: (BuildContext context, CurrencyRateState state) {
          if (state is CurrencyRatesLoading) {
            return const _LoadingIndicator();
          } else if (state is CurrencyRatesLoaded) {
            return CurrencyRatesListRefresh(
              state.rates,
              onRefresh: _refreshRates,
            );
          } else if (state is CurrencyRatesRefreshing) {
            return CurrencyRatesListRefresh(
              state.rates,
              onRefresh: _refreshRates,
            );
          } else if (state is CurrencyRatesError) {
            return _ErrorMessage(error: state.error);
          } else {
            throw ArgumentError('Unexpected state $state');
          }
        },
      ),
    );
  }

  void _refreshRates() => _currencyRatesBloc.refreshCurrencyRates();
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _ErrorMessage extends StatelessWidget {
  final dynamic error;

  const _ErrorMessage({
    @required this.error,
    Key key,
  })  : assert(error != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$error'),
            const SizedBox(height: 16),
            IconButton(
              icon: Icon(Icons.refresh),
              iconSize: 32,
              onPressed:
                  BlocProvider.of<CurrencyRatesBloc>(context).loadCurrencyRates,
            ),
          ],
        ),
      ),
    );
  }
}
