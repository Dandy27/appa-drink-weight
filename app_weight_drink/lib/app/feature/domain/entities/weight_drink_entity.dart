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
    return total.roundToDouble() / 100;
  }
}

void main() {
  final wde = WeightDrinkEntity(
      pesoLiquido: 772,
      quantDoses: 12,
      pesoBruto: 1200,
      tara: 487.5,
      pesoGrfAberta: 660);
  final result = wde;
  print(result.calculate);
}
