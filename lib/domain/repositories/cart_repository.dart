import 'package:dartz/dartz.dart';

import '../../core/errors/failures/failure.dart';
import '../entities/cart.dart';
import '../entities/product.dart';

abstract class CartRepository {
  Future<Either<Failure, Cart>> getCart();
  Future<Either<Failure, Cart>> addToCart(Product product, int quantity);
  Future<Either<Failure, Cart>> removeFromCart(Product product);
  Future<Either<Failure, Cart>> updateCartItemQuantity(
    Product product,
    int quantity,
  );
  Future<Either<Failure, void>> clearCart();
}
