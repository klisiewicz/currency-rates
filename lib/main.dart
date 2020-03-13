import 'package:currency_rates/src/currency_rates_app.dart';
import 'package:currency_rates/src/di/injector.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencies();
  runApp(CurrencyRatesApp());
}
