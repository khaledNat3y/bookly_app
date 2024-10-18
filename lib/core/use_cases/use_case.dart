import 'package:dartz/dartz.dart';

import '../networking/errors_handler.dart';

abstract class UseCase<Type, int> {
  Future<Either<Failure, Type>> call(int param);
}
class NoParam {}