import 'package:digitallibrary/app/modules/utils/color.dart';
import 'package:digitallibrary/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../controllers/my_list_controller.dart';

class MyListView extends GetView<MyListController> {
  final MyListController myListController = Get.put(MyListController());
  MyListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorwhite,
          toolbarHeight: 50.0,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'My List',
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
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                //   child: Text(
                //     'My List',
                //     style: GoogleFonts.quicksand(
                //         color: colorFourd,
                //         fontWeight: FontWeight.bold,
                //         fontSize: 30.0),
                //   ),
                // ),
                10.height,
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          height: 95.0,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: colorThird,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 15.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Image.asset(
                                    'assets/images/cover.jpg',
                                    height: 100.0,
                                  ),
                                ),
                                20.width,
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'The Trouble With Perfect',
                                      style: GoogleFonts.quicksand(
                                        fontWeight: FontWeight.bold,
                                        color: colorFourd,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    Text(
                                      'Due Date : Mon, Jan 16, 2024',
                                      style: GoogleFonts.quicksand(
                                        color: colorblack,
                                        fontSize: 13.0,
                                      ),
                                    ),
                                    RichText(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(
                                        style: GoogleFonts.quicksand(
                                          color: colorblack,
                                          fontSize: 13.0,
                                        ),
                                        children: [
                                          WidgetSpan(
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Status : ',
                                                  style: GoogleFonts.quicksand(
                                                      color: colorblack,
                                                      fontSize: 13.0),
                                                ),
                                                Text(
                                                  'Process',
                                                  style: GoogleFonts.quicksand(
                                                      color: Colors.blue,
                                                      fontSize: 13.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: 120,
                                        ),
                                        SizedBox(
                                          height: 25.0,
                                          width: 100.0,
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: colorPrimary,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                // fixedSize: const Size(75.0, 5.0),
                                              ),
                                              onPressed: () {
                                                Get.bottomSheet(
                                                  isScrollControlled: true,
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        height: 600.0,
                                                        margin: const EdgeInsets
                                                            .fromLTRB(
                                                            0, 90, 0, 0),
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: colorwhite,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    40.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    40.0),
                                                          ),
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              left: 20.0,
                                                              right: 20.0,
                                                              top: 80.0,
                                                              bottom: 10.0,
                                                            ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'The Trouble With Perfect',
                                                                      style: GoogleFonts
                                                                          .quicksand(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            colorblack,
                                                                        fontSize:
                                                                            20.0,
                                                                      ),
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      maxLines:
                                                                          1,
                                                                    ),
                                                                    6.height,
                                                                    Text(
                                                                      'Helena Duggan',
                                                                      style: GoogleFonts
                                                                          .quicksand(
                                                                        color:
                                                                            colorblack,
                                                                        fontSize:
                                                                            20.0,
                                                                      ),
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      maxLines:
                                                                          1,
                                                                    ),
                                                                    5.height,
                                                                  ],
                                                                ),
                                                                10.height,
                                                                Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Total Fine',
                                                                      style: GoogleFonts.quicksand(
                                                                          color:
                                                                              colorblack,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              20.0),
                                                                    ),
                                                                    5.height,
                                                                    Container(
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          const BoxDecoration(
                                                                        border:
                                                                            Border(
                                                                          bottom: BorderSide(
                                                                              color: colorPrimary,
                                                                              width: 1.0),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            bottom:
                                                                                8.0),
                                                                        child:
                                                                            Text(
                                                                          'Rp -',
                                                                          style: GoogleFonts.quicksand(
                                                                              color: colorblack,
                                                                              fontSize: 20.0),
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                25.height,
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          15.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        110.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              15.0),
                                                                      border: Border.all(
                                                                          color:
                                                                              colorPrimary),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'Rate for book',
                                                                          style: GoogleFonts.quicksand(
                                                                              color: colorblack,
                                                                              fontSize: 20.0),
                                                                        ),
                                                                        15.height,
                                                                        RatingBar.builder(
                                                                            minRating: 1,
                                                                            itemSize: 40.0,
                                                                            glow: true,
                                                                            allowHalfRating: true,
                                                                            unratedColor: colorgrey,
                                                                            itemBuilder: (context, _) => const Icon(
                                                                                  Icons.star,
                                                                                  color: Colors.amber,
                                                                                ),
                                                                            onRatingUpdate: (rating) {
                                                                              if (rating.toInt() < 3) {
                                                                                log('Less than three');
                                                                              } else {
                                                                                log('Greater than 3');
                                                                              }
                                                                            }),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                25.height,
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          15.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    // height: 110.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              15.0),
                                                                      border: Border.all(
                                                                          color:
                                                                              colorPrimary),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .all(
                                                                          8.0),
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Text(
                                                                            'Leave review for book',
                                                                            style:
                                                                                GoogleFonts.quicksand(color: colorblack, fontSize: 20.0),
                                                                          ),
                                                                          15.height,
                                                                          Container(
                                                                            margin: const EdgeInsets.only(
                                                                                left: 8.0,
                                                                                right: 8.0,
                                                                                bottom: 8.0),
                                                                            // height: 50.0,
                                                                            decoration:
                                                                                BoxDecoration(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: colorgrey, width: 1.0)),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                                              child: TextFormField(
                                                                                showCursor: true,
                                                                                cursorColor: colorPrimary,
                                                                                controller: myListController.ulasanC,
                                                                                maxLines: 3,
                                                                                inputFormatters: [
                                                                                  LengthLimitingTextInputFormatter(150),
                                                                                ],
                                                                                decoration: const InputDecoration(
                                                                                  hintText: 'Write your review here!',
                                                                                  border: InputBorder.none,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                25.height,
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  height: 40.0,
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        50.0,
                                                                    width:
                                                                        100.0,
                                                                    child:
                                                                        ElevatedButton(
                                                                      style: ElevatedButton
                                                                          .styleFrom(
                                                                        backgroundColor:
                                                                            colorPrimary,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                        fixedSize: const Size(
                                                                            95.0,
                                                                            10.0),
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        Get.toNamed(
                                                                            Routes.PAYMENT);
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'Return',
                                                                        style: GoogleFonts
                                                                            .quicksand(
                                                                          color:
                                                                              colorwhite,
                                                                          fontSize:
                                                                              20.0,
                                                                          // fontWeight:
                                                                          //     FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        right: 0,
                                                        child: Container(
                                                          // decoration: BoxDecoration(
                                                          //     color: colorPrimary),
                                                          width: 200,
                                                          height: 150,
                                                          child: Image.asset(
                                                            'assets/images/cover.jpg',
                                                            width: 200,
                                                            height: 150,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                'Return',
                                                style: GoogleFonts.quicksand(
                                                  color: colorwhite,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

void dialogQR(BuildContext context) {
  Get.defaultDialog(
    title: '',
    titlePadding: const EdgeInsets.only(right: 140.0, top: 20.0),
    titleStyle:
        GoogleFonts.quicksand(color: colorblack, fontWeight: FontWeight.w400),
    content: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Scan The QR Below To Make Your Transaction. Only Dana Available',
            style: GoogleFonts.quicksand(color: colorgrey, fontSize: 15.0),
          ),
          10.height,
          QrImageView(
            data: 'https://github.com/ameliadp/libraryDigital',
            version: QrVersions.auto,
            size: 220.0,
          ),
        ],
      ),
    ),
    actions: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
          fixedSize: const Size(100, 10),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          Get.back();
          Get.back();
        },
        child: Text(
          'Selesai',
          style: GoogleFonts.quicksand(color: colorwhite, fontSize: 14.0),
        ),
      ),
    ],
  );
}
