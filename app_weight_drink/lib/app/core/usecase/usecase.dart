import 'package:app_weight_drink/app/core/errors/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

abstract class Usecase<OutPut, Input> {
  Future<Either<Failure, OutPut>> call(Input params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
