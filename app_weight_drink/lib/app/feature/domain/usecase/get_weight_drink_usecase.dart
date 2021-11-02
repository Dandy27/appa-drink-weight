import 'package:app_weight_drink/app/core/errors/failure.dart';
import 'package:app_weight_drink/app/core/usecase/usecase.dart';
import 'package:app_weight_drink/app/feature/domain/entities/weight_drink_entity.dart';
import 'package:app_weight_drink/app/feature/domain/repositories/weight_drink_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetWeightDrinkUsecase implements Usecase<WeightDrinkEntity, int> {
  final WeightDrinkRepository repository;

  GetWeightDrinkUsecase(this.repository);
  @override
  Future<Either<Failure, WeightDrinkEntity>> call(int id) async {
    return await repository.getWeightDrinkEntity(id);
  }
}
