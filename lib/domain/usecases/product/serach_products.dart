import '../../../core/errors/failures/failure.dart';
import '../../entities/product.dart';
import '../../repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

class SearchProducts {
  final ProductRepository repository;

  const SearchProducts(this.repository);

  Future<Either<Failure, List<Product>>> call(String query) async {
    return await repository.searchProducts(query);
  }
}
