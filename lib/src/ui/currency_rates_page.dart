import 'package:currency_rates/src/domain/currency_rate_bloc.dart';
import 'package:currency_rates/src/domain/currency_rate_state.dart';
import 'package:currency_rates/src/ui/currency_rates_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyRatesPage extends StatefulWidget {
  @override
  _CurrencyRatesPageState createState() => _CurrencyRatesPageState();
}

class _CurrencyRatesPageState extends State<CurrencyRatesPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CurrencyRatesBloc>(context).loadCurrencyRates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kursy Walut'),
        elevation: 0,
      ),
      body: BlocBuilder<CurrencyRatesBloc, CurrencyRateState>(
        builder: (context, state) {
          if (state is CurrencyRatesBusy) {
            return const _LoadingIndicator();
          } else if (state is CurrencyRatesReady) {
            return CurrencyRatesList(state.rates);
          } else if (state is CurrencyRatesError) {
            return _ErrorMessage(error: state.error);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
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
