import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failures.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.unAuthorized(String message) = UnAuthorized;
  const factory NetworkFailure.unexpected() = UnExpected;
  const factory NetworkFailure.serverError(String errorCode) = ServerError;
  const factory NetworkFailure.serverTimeOut() = ServerTimedOut;
}
