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
      return Left(InvaidPesoBruto());
    }
    if (pesoGrfAberta < tara) {
      return Left(InvalidPesoGrfAberta());
    }
    if (quantDoses < 1) {
      return Left(InvalidQuantDoses());
    }
    if (quantDoses > 30) {
      return Left(InvalidQuantDoses());
    }
    return total.roundToDouble() / 100;
  }
}
