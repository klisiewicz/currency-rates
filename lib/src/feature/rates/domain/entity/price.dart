import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class Price with EquatableMixin {
  final num _value;

  const Price(num value) : _value = value;

  Price operator +(Price other) {
    return Price(_value + other._value);
  }

  Price operator -(Price other) {
    return Price(_value - other._value);
  }

  @override
  List<Object?> get props => [_value];

  @override
  String toString() => _value.toStringAsFixed(4);
}
