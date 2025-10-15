import '../../../core/errors/failures/failure.dart';
import '../../entities/cart.dart';
import '../../entities/product.dart';
import '../../repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';

class AddToCart {
  final CartRepository repository;

  const AddToCart(this.repository);

  Future<Either<Failure, Cart>> call(
    Product product, [
    int quantity = 1,
  ]) async {
    return await repository.addToCart(product, quantity);
  }
}
