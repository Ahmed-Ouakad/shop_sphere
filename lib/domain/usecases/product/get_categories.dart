import '../../../core/errors/failures/failure.dart';
import '../../repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

class GetCategories {
  final ProductRepository repository;

  const GetCategories(this.repository);

  Future<Either<Failure, List<String>>> call() async {
    return await repository.getCategories();
  }
}
