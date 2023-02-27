import 'dart:convert';

import 'package:get/get.dart';
import 'package:myapp/app/data/entertainment_response.dart';
import 'package:myapp/app/data/headline_response.dart';
import 'package:myapp/app/data/sports_response.dart';
import 'package:myapp/app/data/tecnology_response.dart';
import 'package:myapp/app/utils/api.dart';

class DashboardController extends GetxController {
  final _getConnect = GetConnect();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<HeadlineResponse> getHeadline() async {
    final response = await _getConnect.get(BaseUrl.headline);
    return HeadlineResponse.fromJson(jsonDecode(response.body));
  }

  Future<EntertainmentResponse> getEntertainment() async {
    final response = await _getConnect.get(BaseUrl.entertainment);
    return EntertainmentResponse.fromJson(jsonDecode(response.body));
  }

  Future<SportsResponse> getSports() async {
    final response = await _getConnect.get(BaseUrl.sports);
    return SportsResponse.fromJson(jsonDecode(response.body));
  }

  Future<TecnologyResponse> getTecnology() async {
    final response = await _getConnect.get(BaseUrl.technology);
    return TecnologyResponse.fromJson(jsonDecode(response.body));
  }
}
