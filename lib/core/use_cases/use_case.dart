import 'package:dartz/dartz.dart';

import '../networking/errors_handler.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call(Param param);
}
class NoParam {}