import 'package:dartz/dartz.dart';

import '../../../core/errors/failures/failure.dart';
import '../../entities/product.dart';
import '../../repositories/product_repository.dart';

class GetProductsByCategory {
  final ProductRepository repository;

  const GetProductsByCategory(this.repository);

  Future<Either<Failure, List<Product>>> call(String category) async {
    return await repository.getProductsByCategory(category);
  }
}
