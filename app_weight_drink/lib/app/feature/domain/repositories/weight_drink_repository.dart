import 'package:app_weight_drink/app/core/errors/failure.dart';
import 'package:app_weight_drink/app/feature/domain/entities/weight_drink_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class WeightDrinkRepository {
  Future<Either<Failure, WeightDrinkEntity>> getWeightDrinkEntity(int id);
}
