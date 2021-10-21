import 'package:app_weight_drink/app/feature/domain/entities/weight_drink_entity.dart';
import 'package:app_weight_drink/app/feature/domain/errors/failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';

void main() {
  final tWeightDrinkEntity = WeightDrinkEntity(
      pesoLiquido: 712.5,
      quantDoses: 31,
      pesoBruto: 1200,
      tara: 487.5,
      pesoGrfAberta: 660);

  test('deve retornar o calculo', () {
    expect(tWeightDrinkEntity.calculate, 2.91);
  });
  
}
