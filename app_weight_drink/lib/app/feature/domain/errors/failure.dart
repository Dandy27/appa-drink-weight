abstract class Failure implements Exception {}

class WeightDrinkException implements Failure {
  final String message;

  WeightDrinkException({required this.message});
}

class InvaidPesoBruto implements Failure {}

class InvalidPesoGrfAberta implements Failure {}

class InvalidQuantDoses implements Failure{}