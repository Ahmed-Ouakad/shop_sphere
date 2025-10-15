import 'package:dartz/dartz.dart';
import 'package:shop_sphere/domain/repositories/cart_repository.dart';

import '../../../core/errors/failures/failure.dart';
import '../../entities/cart.dart';
import '../../entities/product.dart';

class RemoveFromCart {
  final CartRepository repository;

  const RemoveFromCart(this.repository);

  Future<Either<Failure, Cart>> call(Product product) async {
    return await repository.removeFromCart(product);
  }
}
