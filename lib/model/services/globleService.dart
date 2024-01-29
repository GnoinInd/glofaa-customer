import 'package:get/get.dart';

import '../../view/widgets/log_print/log_print_condition.dart';

import '../network_calls/api_helper/provider_helper/auth_provider.dart';
import '../network_calls/dio_client/get_it_instance.dart';
import '../utils/resource/app_constants.dart';
import 'auth_service.dart';

class GlobalService extends GetxService {
  Future<GlobalService> init() async {
   // getPageContent();
    return this;
  }

}
