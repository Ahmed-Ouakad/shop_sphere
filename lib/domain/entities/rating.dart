import 'package:equatable/equatable.dart';

class Rating extends Equatable {
  final double rate;
  final int count;

  const Rating({required this.rate, required this.count});

  @override
  List<Object?> get props => [rate, count];

  @override
  String toString() => 'Rating(rate: $rate, count: $count)';

  Rating copyWith({double? rate, int? count}) {
    return Rating(rate: rate ?? this.rate, count: count ?? this.count);
  }
}
