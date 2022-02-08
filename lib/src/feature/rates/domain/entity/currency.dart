import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class Currency with EquatableMixin {
  final String code;
  final String name;

  const Currency({
    required this.code,
    required this.name,
  });

  @override
  List<Object> get props => [code, name];

  @override
  String toString() => '$name ($code)';
}
