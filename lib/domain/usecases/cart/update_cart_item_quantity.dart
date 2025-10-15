import 'package:dartz/dartz.dart';
import 'package:shop_sphere/domain/repositories/cart_repository.dart';

import '../../../core/errors/failures/failure.dart';
import '../../entities/cart.dart';
import '../../entities/product.dart';

class UpdateCartItemQuantity {
  final CartRepository repository;

  const UpdateCartItemQuantity(this.repository);

  Future<Either<Failure, Cart>> call(Product product, int quantity) async {
    return await repository.updateCartItemQuantity(product, quantity);
  }
}
