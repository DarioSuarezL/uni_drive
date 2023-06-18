import 'package:uni_drive/models/error_msg_model.dart';

class ApiResponse<T>{
  Object? data;
  ErrorMsg? error;

  
  ApiResponse({this.data, this.error});
}