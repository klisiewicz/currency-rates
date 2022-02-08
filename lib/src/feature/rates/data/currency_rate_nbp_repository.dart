import 'dart:convert';

import 'package:currency_rates/src/feature/rates/data/currency_rate_nbp_factory.dart';
import 'package:currency_rates/src/feature/rates/domain/entity/currency_rate.dart';
import 'package:currency_rates/src/feature/rates/domain/repository/currency_rate_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class CurrencyRateNbpRepository extends CurrencyRateRepository {
  static final Uri _apiUri = Uri(
    scheme: 'http',
    host: 'api.nbp.pl',
    path: 'api/exchangerates/tables/C',
  );
  static const CurrencyRateNbpFactory _factory = CurrencyRateNbpFactory();

  final Client _client;

  CurrencyRateNbpRepository(Client client) : _client = client;

  @override
  Future<List<CurrencyRate>> getCurrencyRates() async {
    final response = await _client.get(_apiUri);
    if (response.statusCode != 200) throw Exception('Unable to fetch rates.');
    final jsonBody = json.decode(response.body) as List;
    return compute(_factory.fromMapList, jsonBody[0] as Map);
  }
}
