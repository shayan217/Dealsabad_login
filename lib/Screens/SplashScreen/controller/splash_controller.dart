import 'package:dealsabaad/Screens/OnBoarding/screen/onboarding.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  changescreen() async {
    await Future.delayed(
      const Duration(seconds: 4),
      () {
        Get.to(Onboarding());
      },
    );
    update();
  }

  @override
  void onInit() {
    changescreen();
    super.onInit();
  }

  @override
  void onClose() {
    changescreen();
    super.onClose();
  }
}
