import 'package:allwork/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const String explanation =
        'Encountered a Valuefailure at an unrecoverable point. Terminating. ';
    return Error.safeToString('$explanation Failure was $valueFailure');
  }
}
