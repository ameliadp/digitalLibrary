import 'package:digitallibrary/app/modules/utils/btnCategory.dart';
import 'package:digitallibrary/app/modules/utils/color.dart';
import 'package:digitallibrary/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/top_book_controller.dart';

class TopBookView extends GetView<TopBookController> {
  const TopBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 35.0,
          leading: IconButton(
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: SizedBox(
                  height: 35.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: TextButton(
                              onPressed: () {},
                              style: BtnCategory().btnCategoryStyle(false),
                              child: Text(
                                'Category',
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.bold,
                                  // color: colorwhite,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              20.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 27.0,
                    mainAxisSpacing: 0.0,
                    childAspectRatio: 0.6, // Adjust the aspect ratio as needed
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.DETAIL);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          // decoration: BoxDecoration(color: colorPrimary),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 200,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  'assets/images/cover2.jpeg',
                                  // width: double.infinity,
                                  height: 190,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              10.height,
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 6.0, right: 6.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'The Trouble With Perfect',
                                      style: GoogleFonts.quicksand(
                                          color: colorblack,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xffFFD233),
                                          size: 20.0,
                                        ),
                                        Text(
                                          '4.5/5',
                                          style: GoogleFonts.quicksand(
                                              color: colordarkgrey,
                                              fontSize: 13),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
