import 'package:digitallibrary/app/modules/utils/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Payment',
            style: GoogleFonts.quicksand(
                color: colorPrimary,
                fontSize: 25.0,
                fontWeight: FontWeight.w700),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: colorPrimary,
              size: 20.0,
            ),
          ),
        ),
        elevation: 3,
        shadowColor: colorgrey,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 130.0,
          bottom: 130.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Scan The QR Below To Make Your Transaction. ',
                          style: GoogleFonts.quicksand(
                              color: Colors.grey, fontSize: 16.0),
                        ),
                        TextSpan(
                          text: 'Only Dana Available',
                          style: GoogleFonts.quicksand(
                              color: Colors.blue, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            25.height,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImageView(
                  data: 'https://github.com/ameliadp/digitalLibrary',
                  version: QrVersions.auto,
                  size: 220.0,
                ),
                25.height,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 2.0),
                    fixedSize: const Size(100, 10),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Get.back();
                    Get.back();
                  },
                  child: Text(
                    'Done',
                    style:
                        GoogleFonts.mulish(color: colorwhite, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
