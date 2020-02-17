import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class Currency extends Equatable {
  final String code;
  final String name;

  const Currency({
    @required this.code,
    @required this.name,
  })  : assert(code != null),
        assert(name != null);

  @override
  List<Object> get props => [code, name];

  @override
  String toString() => '$name ($code)';
}
