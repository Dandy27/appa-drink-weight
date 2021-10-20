abstract class Failure implements Exception {}

class WeightDrinkException implements Failure {
  final String message;

  WeightDrinkException(this.message);
}
