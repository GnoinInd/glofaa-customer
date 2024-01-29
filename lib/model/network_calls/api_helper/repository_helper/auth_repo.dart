import 'dart:convert';

import 'package:get/get.dart' as get_token;

import '../../../../view/widgets/log_print/log_print_condition.dart';
import '../../../models/network_call_model/api_response.dart';

import '../../../utils/resource/app_constants.dart';
import '../../dio_client/dio_client.dart';
import '../../exception/api_error_handler.dart';

class AuthRepo {
  final DioClient dioClient;
  AuthRepo({
    required this.dioClient,
  });

}
