import 'package:dealsabaad/Screens/pay_Installment/Screens/pay_installment.dart';
import 'package:dealsabaad/Screens/pay_Installment/Screens/pay_installment_processCheckout.dart';
import 'package:dealsabaad/Screens/payment_method/Controller/payment_method_controller.dart';
import 'package:dealsabaad/customwidget/custom_widget.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_image.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class CardPaymentMethod extends StatelessWidget {
  final RxInt currentIndex = 0.obs;
  CardPaymentMethod({Key? key}) : super(key: key);
  final controller = Get.put(CardPaymentMethodeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DAColor.white,
      appBar: AppBar(
        surfaceTintColor: DAColor.white,
        backgroundColor: DAColor.white,
        title: Text(
          DAText.Hometext3,
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    DAText.PaymentMethod,
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  height: 280,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Text(
                          DAText.Howwouldyouliketopay,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Obx(() => _buildRadioButtonRow(
                            0,
                            DAText.Visa,
                            DAImages.visaCard,
                            controller.selectedPaymentMethodIndex.value,
                            controller.onPaymentMethodChanged,
                          )),
                      Obx(() => _buildRadioButtonRow(
                            1,
                            DAText.easyPaisa,
                            DAImages.easyPaisa,
                            controller.selectedPaymentMethodIndex.value,
                            controller.onPaymentMethodChanged,
                          )),
                      Obx(() => _buildRadioButtonRow(
                            2,
                            DAText.jazzCash,
                            DAImages.jazzCash,
                            controller.selectedPaymentMethodIndex.value,
                            controller.onPaymentMethodChanged,
                          )),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 450,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(PayInstallmentProcessCheckout());
                  },
                  child: Text(
                    DAText.ProceedtoCheckout,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      DAColor.yellow,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(currentIndex: currentIndex),
    );
  }

  Widget _buildRadioButtonRow(int index, String text, String assetPath,
      int selectedPaymentMethodIndex, Function(int?) onPaymentMethodChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Radio<int>(
              value: index,
              groupValue: selectedPaymentMethodIndex,
              onChanged: onPaymentMethodChanged,
              activeColor: DAColor.black,
            ),
            Text(
              text,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Image.asset(
          assetPath,
          width: 100,
          height: 50,
        ),
      ],
    );
  }
}
