import 'package:dartz/dartz.dart';

import '../../../core/errors/failures/failure.dart';
import '../../entities/product.dart';
import '../../repositories/product_repository.dart';

class GetProductById {
  final ProductRepository repository;

  const GetProductById(this.repository);

  Future<Either<Failure, Product>> call(int id) async {
    return await repository.getProductById(id);
  }
}
