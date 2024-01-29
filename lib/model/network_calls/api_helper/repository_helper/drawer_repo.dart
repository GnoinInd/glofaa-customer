

import 'dart:convert';


import '../../../../view/widgets/log_print/log_print_condition.dart';
import '../../../models/network_call_model/api_response.dart';
import '../../../utils/resource/app_constants.dart';
import '../../dio_client/dio_client.dart';
import '../../exception/api_error_handler.dart';

class DrawerRepo {
  final DioClient dioClient;
  DrawerRepo({
    required this.dioClient,
  });

}