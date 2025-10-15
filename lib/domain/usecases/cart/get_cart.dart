import 'package:dartz/dartz.dart';
import 'package:shop_sphere/domain/repositories/cart_repository.dart';

import '../../../core/errors/failures/failure.dart';
import '../../entities/cart.dart';

class GetCart {
  final CartRepository repository;

  const GetCart(this.repository);

  Future<Either<Failure, Cart>> call() async {
    return await repository.getCart();
  }
}
