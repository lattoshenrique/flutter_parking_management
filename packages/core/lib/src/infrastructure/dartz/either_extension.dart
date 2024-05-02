import 'package:common_deps/common_deps.dart';

extension EitherExt<L, R> on Either<L, R> {
  R? toNullable() {
    return toOption().toNullable();
  }

  R toRight() {
    return fold(
      (_) => throw AssertionError(
        'Either instance is not Right! You must check before with the isRight() method.',
      ),
      (r) => r,
    );
  }

  L toLeft() {
    return fold(
      (l) => l,
      (_) => throw AssertionError(
        'Either instance is not Left! You must check before with the isLeft() method.',
      ),
    );
  }
}
