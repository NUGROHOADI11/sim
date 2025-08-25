import 'package:get/get.dart';
import 'package:sim/configs/routes/route.dart';
import '../../features/driving_license_card/bindings/driving_license_card_binding.dart';
import '../../features/driving_license_card/view/ui/driving_license_card_screen.dart';

abstract class Pages {
  static final pages = [
    GetPage(
        name: Routes.drivingLicenseCardRoute,
        page: () => DrivingLicenseCardScreen(),
        binding: DrivingLicenseCardBinding()),
  ];
}
