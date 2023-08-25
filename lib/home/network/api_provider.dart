



import 'package:dynamic_widget_assignment/common/network/endpoints.dart';
import 'package:dynamic_widget_assignment/common/network/model/response_api.dart';
import 'package:dynamic_widget_assignment/common/network/service/api_service.dart';
import 'package:dynamic_widget_assignment/common/network/service/http_service.dart';
import 'package:dynamic_widget_assignment/common/network/service/status.dart';

class DynamicWidgetHomeAPIProvider {
  Future<ResponseApi> homeDynamicWidgetApi() async {
    return await apiService.getRequest(
      headers: httpService.getHeader(),
      url: Endpoints.homeWidgetApiUrl,
      apiType: ApiStatus.DYNAMIC_WIDGET_API,
    );
  }
}
