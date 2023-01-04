import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:notely/core/error/exception.dart';

abstract class UseCase<Type, ParameterOne, ParameterTwo, ParameterThree>{
  Future<Either<Failure, Type>> call (ParameterOne parameterOne, ParameterTwo parameterTwo, ParameterThree parameterThree);
}

class NoParameters extends Equatable{
  @override
  List<Object?> get props => throw [];
}