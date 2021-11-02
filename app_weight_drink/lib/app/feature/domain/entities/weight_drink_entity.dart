import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class WeightDrinkEntity extends Equatable {
  int id;
  String nameDrink;
  double pesoLiquido;
  int quantDoses;
  double pesoBruto;
  double tara;
  double pesoGrfAberta;

  WeightDrinkEntity({
    required this.id,
    required this.nameDrink,
    required this.pesoLiquido,
    required this.quantDoses,
    required this.pesoBruto,
    required this.tara,
    required this.pesoGrfAberta,
  });
  get calculate {
    var total =
        (((pesoGrfAberta - tara) * quantDoses / (pesoBruto - tara) * 100));
    return total.roundToDouble() / 100;
  }

  @override
  List<Object?> get props {
    return [
      id,
      nameDrink,
      pesoLiquido,
      quantDoses,
      pesoBruto,
      tara,
      pesoGrfAberta,
    ];
  }
}
