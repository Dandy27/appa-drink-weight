import 'package:app_weight_drink/app/feature/domain/entities/weight_drink_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tWeightDrinkEntity = WeightDrinkEntity(
      pesoLiquido: 712.5,
      quantDoses: 12,
      pesoBruto: 1200,
      tara: 487.5,
      pesoGrfAberta: 400);

  test('deve retornar o calculo', () {
    expect(tWeightDrinkEntity.calculate, 2.91);
  });
}
  