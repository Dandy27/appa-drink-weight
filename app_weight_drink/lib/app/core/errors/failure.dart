abstract class Failure implements Exception {}

class WeightDrinkException implements Failure {
  final String message;

  WeightDrinkException({required this.message});
}

