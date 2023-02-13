import 'package:dio/dio.dart';

class ApiErrorMessage {
  static const String sessionError =
      "Your session has been expired please log in to continue";
  static const String dioErrorTypeCancel =
      "Request to server has been cancelled";
  static const String dioErrorTypeConnectTimeout =
      "Connection to the server has been Timed out";
  static const String dioErrorTypeDefault =
      "Unable to process your request, please try again later";
  static const String dioErrorTypeReceiveTimeout =
      "Response from server has been timed out";
  static const String dioErrorTypeResponse =
      "Server error occurred, please try again later";
  static const String dioErrorTypeSendTimeout = "Request has been timed out";
  static const String normalErrorMessage =
      "Something went wrong, please try again later";
  static const String netFailureMsg =
      "Please check your internet connection, it may be poor or disconnected";
  static const String labelLogInWarningMsg =
      "You need to logged in before use this feature, Do you want to login?";

  static String getNetworkError(error) {
    String errorDescription = "";
    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.cancel:
          errorDescription = dioErrorTypeCancel;
          break;
        case DioErrorType.connectTimeout:
          errorDescription = dioErrorTypeConnectTimeout;
          break;
        case DioErrorType.other:
          errorDescription = dioErrorTypeDefault;
          break;
        case DioErrorType.receiveTimeout:
          errorDescription = dioErrorTypeReceiveTimeout;
          break;
        case DioErrorType.response:
          errorDescription = dioErrorTypeResponse;
          break;
        case DioErrorType.sendTimeout:
          errorDescription = dioErrorTypeSendTimeout;
          break;
      }
    } else {
      errorDescription = normalErrorMessage;
    }

    return errorDescription;
  }
}
