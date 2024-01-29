
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../view/widgets/log_print/log_print_condition.dart';
import '../network_calls/dio_client/dio_client.dart';
import '../network_calls/dio_client/get_it_instance.dart';
import '../utils/resource/string_resource.dart';
import 'back_ground_service.dart';

class AuthService extends GetxService {
 // Rx<User> user = User().obs;
  GetStorage? box;
  RxString firebaseToken = "".obs;

  Future<AuthService> init() async {
    box = GetStorage();
   // getCurrentUserData();
    return this;
  }



  String getUserToken() {
    return box?.read(StringResource.instance.token) ?? "";
  }
  bool get isFirst => box?.read(StringResource.instance.isFirst) ?? false;
  bool get isLogin => box?.hasData(StringResource.instance.currentUser) ?? false;
}
