import 'package:dartz/dartz.dart';
import 'package:shop_sphere/domain/repositories/cart_repository.dart';

import '../../../core/errors/failures/failure.dart';

class ClearCart {
  final CartRepository repository;

  const ClearCart(this.repository);

  Future<Either<Failure, void>> call() async {
    return await repository.clearCart();
  }
}
