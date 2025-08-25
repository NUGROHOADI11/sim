import 'package:get/get.dart';
// import '../../configs/routes/route.dart';
import '../../constants/core/api/api_constant.dart';

class GlobalController extends GetxController {
  static GlobalController get to => Get.find();
  var baseUrl = ApiConstant.production;
  var isStaging = false.obs;
}
