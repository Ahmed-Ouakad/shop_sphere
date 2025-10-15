import '../../../core/errors/failures/failure.dart';

import 'package:dartz/dartz.dart';

import '../../entities/product.dart';
import '../../repositories/product_repository.dart';

class GetProducts {
  final ProductRepository repository;

  const GetProducts(this.repository);

  Future<Either<Failure, List<Product>>> call() async {
    return await repository.getProducts();
  }
}
