import 'package:flutter_testes/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_testes/core/usecases/usecase.dart';
import 'package:flutter_testes/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_testes/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;
  GetRandomNumberTrivia(this.repository);
  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
