import 'package:equatable/equatable.dart';
 
// ignore: must_be_immutable
class WeightDrinkEntity extends Equatable {
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
        (((pesoGrfAberta - tara) * quantDoses / (pesoBruto - tara) * 100) );
    return total.roundToDouble() / 100;
  }

  @override
  List<Object?> get props {
    return [
      pesoLiquido,
      quantDoses,
      pesoBruto,
      tara,
      pesoGrfAberta,
    ];
  }
}
