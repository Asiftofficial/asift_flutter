import 'dart:convert';
import 'package:asift_flutter/app/preferences.dart';
import 'package:asift_flutter/data/models/login/logged_user_response.dart';
import 'package:asift_flutter/data/models/login/login_user_request.dart';
import 'package:http/http.dart' as http;

import '../../utils/status_code_handler.dart';

abstract class AsiftRemoteDataSource {
  Future<LoggedUserResponse> login(LoginUserRequest loginUserRequest);
  //Future<TrafficModel> getTraffic(String higoRouterId, String daterange);
}

class AsiftRemoteDataSourceImpl implements AsiftRemoteDataSource {
  static const BASE_URL = 'https://apidb.higo.id/v1';
  final dbPreferences = AsiftPreferences();

  final http.Client client;

  AsiftRemoteDataSourceImpl({required this.client});

  @override
  Future<LoggedUserResponse> login(LoginUserRequest loginUserRequest) async {
    final response = await client.post(Uri.parse('$BASE_URL/login'),
        body: jsonEncode(loginUserRequest),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json'
        });

    if (response.statusCode != 200) {
      StatusCodeHandler.checkStatusCode(
          response.statusCode, json.decode(response.body)['message']);
    }

    return LoggedUserResponse.fromJson(json.decode(response.body));
  }

  // @override
  // Future<TrafficModel> getTraffic(String higoRouterId, String daterange) async {
  //   final String startDate = daterange.split(':')[0];
  //   final String endDate = daterange.split(':')[1];
  //   String token = await dbPreferences.getToken();
  //   String refreshToken = await dbPreferences.getRefreshToken();
  //   String superadmin = await dbPreferences.getSuperAdmin();
  //   String selected_access_location =
  //       await dbPreferences.getSelectedAccessLocation();

  //   late var response;

  //   if (superadmin == '1') {
  //     response = await client.get(
  //         Uri.parse(
  //             '$BASE_URL/wifitraffic/$higoRouterId/$startDate/$endDate?show_user_id=$selected_access_location'),
  //         headers: {
  //           'Authorization': 'Bearer $token',
  //         });
  //   } else {
  //     response = await client.get(
  //         Uri.parse('$BASE_URL/wifitraffic/$higoRouterId/$startDate/$endDate'),
  //         headers: {
  //           'Authorization': 'Bearer $token',
  //         });
  //   }

  //   if (response.statusCode != 200) {
  //     if (response.statusCode == 401) {
  //       final responseRefresh =
  //           await client.post(Uri.parse('$BASE_URL/refreshtoken'), headers: {
  //         'Authorization': 'Bearer $refreshToken',
  //       });

  //       if (responseRefresh.statusCode != 200) {
  //         StatusCodeHandler.checkStatusCode(response.statusCode,
  //             json.decode(responseRefresh.body)['message']);
  //       }

  //       String refreshedToken =
  //           json.decode(responseRefresh.body)['access_token'];
  //       await dbPreferences.addToken(refreshedToken);

  //       if (superadmin == '1') {
  //         response = await client.get(
  //             Uri.parse(
  //                 '$BASE_URL/wifitraffic/$higoRouterId/$startDate/$endDate?show_user_id=$selected_access_location'),
  //             headers: {
  //               'Authorization': 'Bearer $refreshedToken',
  //             });
  //       } else {
  //         response = await client.get(
  //             Uri.parse(
  //                 '$BASE_URL/wifitraffic/$higoRouterId/$startDate/$endDate'),
  //             headers: {
  //               'Authorization': 'Bearer $refreshedToken',
  //             });
  //       }

  //       if (response.statusCode != 200) {
  //         StatusCodeHandler.checkStatusCode(
  //             response.statusCode, json.decode(response.body)['message']);
  //       }
  //     } else {
  //       StatusCodeHandler.checkStatusCode(
  //           response.statusCode, json.decode(response.body)['message']);
  //     }
  //   }

  //   return TrafficModel.fromJson(json.decode(response.body));
  // }
}
