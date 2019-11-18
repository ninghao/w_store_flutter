class ExceptionResponseModel {
  int statusCode;
  String error;
  String message;

  ExceptionResponseModel.fromJson(Map<String, dynamic> data)
      : statusCode = data['statusCode'],
        error = data['error'],
        message = data['message'];
}
