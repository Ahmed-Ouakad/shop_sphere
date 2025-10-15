import 'package:equatable/equatable.dart';

import 'cart_item.dart';

class Cart extends Equatable {
  final List<CartItem> items;

  const Cart({this.items = const []});

  double get totalPrice => items.fold(0, (sum, item) => sum + item.subtotal);
  int get totalItems => items.fold(0, (sum, item) => sum + item.quantity);

  @override
  List<Object?> get props => [items];
}
