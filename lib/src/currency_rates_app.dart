import 'package:currency_rates/src/di/injector.dart';
import 'package:currency_rates/src/feature/rates/domain/bloc/currency_rate_bloc.dart';
import 'package:currency_rates/src/feature/rates/domain/repository/currency_rate_repository.dart';
import 'package:currency_rates/src/feature/rates/ui/currency_rates_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyRatesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency Rates',
      theme: ThemeData(
        brightness: Brightness.light,
        canvasColor: Colors.grey[100],
        primarySwatch: Colors.blueGrey,
      ),
      home: BlocProvider(
        create: (context) =>
            CurrencyRatesBloc(inject<CurrencyRateRepository>()),
        child: CurrencyRatesPage(),
      ),
    );
  }
}
