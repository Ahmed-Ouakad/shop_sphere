import 'package:dartz/dartz.dart';

import '../../core/errors/failures/failure.dart';
import '../entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
  Future<Either<Failure, List<Product>>> getProductsByCategory(String category);
  Future<Either<Failure, List<String>>> getCategories();
  Future<Either<Failure, Product>> getProductById(int id);
  Future<Either<Failure, List<Product>>> searchProducts(String query);
}
