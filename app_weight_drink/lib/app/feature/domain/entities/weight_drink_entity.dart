import 'package:app_weight_drink/app/feature/domain/errors/failure.dart';
import 'package:fpdart/fpdart.dart';

class WeightDrinkEntity {
  double pesoLiquido;
  int quantDoses;
  double pesoBruto;
  double tara;
  double pesoGrfAberta;

  WeightDrinkEntity({
    required this.pesoLiquido,
    required this.quantDoses,
    required this.pesoBruto,
    required this.tara,
    required this.pesoGrfAberta,
  });

  get calculate {
    var total =
        ((pesoGrfAberta - tara) * quantDoses / (pesoBruto - tara) * 100);

    if (pesoBruto < pesoGrfAberta) {
      return Left(WeightDrinkException(
          message: 'Error!!! não pode ser menor que peso da garrafa aberta'));
    }
    if (pesoGrfAberta < tara) {
      return Left(WeightDrinkException(
          message: 'Error!!! não pode ser menor que a tara'));
    }
    if (quantDoses < 1) {
      return Left(
          WeightDrinkException(message: 'Error!!! não pode ser menor que 1'));
    }
    if (quantDoses > 30) {
      throw 'Error!!! quantDoses não pode ser maior que 30';
    }
    return total.roundToDouble() / 100;
  }
}

// void main() {
//   final weightDrinkEntity = WeightDrinkEntity(
//       pesoLiquido: 772,
//       quantDoses: 31,
//       pesoBruto: 1200,
//       tara: 487.5,
//       pesoGrfAberta: 660);
//   final result = weightDrinkEntity;
//   throw (result.calculate);
// }
