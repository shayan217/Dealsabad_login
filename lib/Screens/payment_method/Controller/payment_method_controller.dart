import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CardPaymentMethodeController extends GetxController {
  RxInt selectedPaymentMethodIndex = (-1).obs;
  void onPaymentMethodChanged(int? newIndex) {
    selectedPaymentMethodIndex.value = newIndex!;
  }
}