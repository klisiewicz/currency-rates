import 'dart:convert';

import 'package:currency_rates/src/domain/currency.dart';
import 'package:currency_rates/src/domain/currency_rate.dart';
import 'package:currency_rates/src/domain/currency_rate_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class CurrencyRateNbpRepository extends CurrencyRateRepository {
  static const _apiUrl = 'http://api.nbp.pl/api/exchangerates/tables/C';

  final Client _client;

  CurrencyRateNbpRepository(Client client)
      : assert(client != null),
        _client = client;

  @override
  Future<List<CurrencyRate>> getCurrencyRates() async {
    final Response response = await _client.get(_apiUrl);
    if (response.statusCode != 200) throw Exception('Unable to fetch rates.');
    final dynamic jsonBody = json.decode(response.body);
    return compute(_getCurrencyRatesFromJson, jsonBody);
  }

  static List<CurrencyRate> _getCurrencyRatesFromJson(dynamic json) {
    final List rates = json[0]['rates'] as List;
    if (rates == null || rates.isEmpty) return [];
    return rates
        .map((rate) => _fromJson(rate))
        .where((rate) => rate.isNotXdr)
        .toList();
  }

  static CurrencyRate _fromJson(dynamic json) {
    return CurrencyRate(
      currency: Currency(
        code: json['code'] as String,
        name: (json['currency'] as String).capitalize(),
      ),
      bid: json['bid'] as num,
      ask: json['ask'] as num,
    );
  }
}

extension on CurrencyRate {
  bool get isNotXdr => currency.code != 'XDR';
}

extension on String {
  String capitalize() => this[0].toUpperCase() + substring(1);
}
