import 'package:app_weight_drink/app/core/usecase/usecase.dart';
import 'package:app_weight_drink/app/feature/domain/entities/weight_drink_entity.dart';
import 'package:app_weight_drink/app/feature/domain/repositories/weight_drink_repository.dart';
import 'package:app_weight_drink/app/feature/domain/usecase/get_weight_drink_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockWeightDrinkRepository extends Mock implements WeightDrinkRepository {}

void main() {
  late GetWeightDrinkUsecase usecase;
  late WeightDrinkRepository repository;

  setUp(() {
    repository = MockWeightDrinkRepository();
    usecase = GetWeightDrinkUsecase(repository);
  });

  final tWeightDrink = WeightDrinkEntity(
      pesoLiquido: 712.5,
      quantDoses: 12,
      pesoBruto: 1200,
      tara: 487.5,
      pesoGrfAberta: 660);

  final tNoParams = NoParams();

  test('deve retornar o calculo para os parametros', () async {
    when(() => repository.getWeightDrinkEntity())
        .thenAnswer((_) async => Right(tWeightDrink));
    final result = await usecase(tNoParams);
    expect(result, Right(tWeightDrink));
    verify(() => repository.getWeightDrinkEntity());
  });
}
