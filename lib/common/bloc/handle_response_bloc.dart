import 'dart:convert';
import 'dart:io';

import 'package:dynamic_widget_assignment/common/logger/app_logger.dart';
import 'package:dynamic_widget_assignment/common/network/model/response_api.dart';
import 'package:dynamic_widget_assignment/common/network/service/status.dart';
import 'package:http/http.dart' as http;

class HandleResponseBloc {
  final tag = 'RESPONSE_HANDLING_BLOC';

  ResponseApi handleResponse({
    required http.Response? result,
    //API TYPE SENT TO HANDLE SUCCESS RESPONSE
    required ApiStatus apiType,
  }) {
    if (result != null) {
      AppLogger.printLog('statusCode-- ${result.statusCode}');
      //200
      if (result.statusCode == HttpStatus.ok ||
          result.statusCode == 201 ||
          result.statusCode == 204) {
        return ResponseApi.success(utf8.decode(result.bodyBytes), apiType,
            headers: result.headers);
      }
      //TODO: ADD MORE ERROR CODES HERE FOR CHECKING,201,404,400,500 etc if required
      //IF ERROR IS UNAUTHORIZED, THEN RETURN TOKEN EXPIRED AND LOGOUT

      //500
      else if (result.statusCode == HttpStatus.internalServerError) {
        AppLogger.printLog('Internal Server Error', tag: tag);
        //TODO WE NEED TO SEND STACK AND ERROR MESSAGE TO FAIL RESPONSE
        return ResponseApi.internalServerError(result.body, apiType);
      } else if (result.statusCode == 401) {
        return ResponseApi.fail401(result.body, apiType);
      } else if (result.statusCode == 403) {
        return ResponseApi.fail403(result.body, apiType);
      } else {
        AppLogger.printLog('ERROR : ${result.body}', tag: tag);
        return ResponseApi.fail(result.body, apiType);
      }
    } else {
      AppLogger.printLog('result is null', tag: tag);
      return ResponseApi.fail("Empty data", apiType);
    }
  }
}

final HandleResponseBloc handleResponseBloc = HandleResponseBloc();
