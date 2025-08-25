import 'package:get/get.dart';
import '../controllers/driving_license_card_controller.dart';

class DrivingLicenseCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DrivingLicenseCardController());
  }
}
