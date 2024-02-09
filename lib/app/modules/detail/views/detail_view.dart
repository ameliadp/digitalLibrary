import 'package:digitallibrary/app/modules/utils/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  String content =
      "Hantu Belanda berambut pirang itu selalu terlihat marah, gusar, dan "
      "mengusir siapa pun yang datang ke rumah. Dia benci orang-orang "
      "berwajah Melayu, dia benci perempuan-perempuan cantik, dia benci "
      "keluarga manusia yang berbahagia. Namun yang paling parah, "
      "dia sangat benci aku. Berulang kali kudengar dia berteriak, "
      "“Pergi kau dari sini! Kafiu sahabat Elizabeth! Kau jahat! Sama seperti "
      "perempuan sundal itu!” Ivanna namanya, gadis yang selalu membuat "
      "aku ketakutan. Tak ada yang berani mendekatinya karena serta-merta "
      "dia itu akan menyerang bagai bertemu musuh. Tak habis pikir bagiku, "
      "kenapa harus aku terbawa dalam luapan kemarahannya? Aku ingin "
      "mencari tahu sesuatu di masa lalunya. Sang hantu perempuan Belanda "
      "angkuh yang pernah tinggal di rumah nenekku. Menjadi kakak angkat "
      "bagi Peter, William, Janshen, Hendrick, dan Hans. Aku tahu, masa "
      "lalunya pasti mengerikan.";
  DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        backgroundColor: colorPrimary,
        toolbarHeight: 45.0,
        title: Text(
          'Details',
          style: GoogleFonts.quicksand(
              color: colorwhite, fontSize: 20.0, fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: colorwhite,
            size: 20.0,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height / 2 + 240,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 95.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Ivanna Van Dijk',
                            style: GoogleFonts.quicksand(
                              color: colorFourd,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        10.height,
                        Container(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Writer',
                                    style: GoogleFonts.quicksand(
                                        color: colordarkgrey, fontSize: 18.0),
                                  ),
                                  79.width,
                                  Text(':',
                                      style: GoogleFonts.quicksand(
                                          color: colordarkgrey,
                                          fontSize: 18.0)),
                                  8.width,
                                  Flexible(
                                    child: Text('Risa Saraswati',
                                        style: GoogleFonts.quicksand(
                                            color: colordarkgrey,
                                            fontSize: 18.0)),
                                  )
                                ],
                              ),
                              10.height,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Publisher',
                                      style: GoogleFonts.quicksand(
                                          color: colordarkgrey,
                                          fontSize: 18.0)),
                                  60.width,
                                  Text(':',
                                      style: GoogleFonts.quicksand(
                                          color: colordarkgrey,
                                          fontSize: 18.0)),
                                  8.width,
                                  Flexible(
                                    child: Text('PT. Bukune Kreatif Cipta',
                                        style: GoogleFonts.quicksand(
                                            color: colordarkgrey,
                                            fontSize: 18.0)),
                                  )
                                ],
                              ),
                              10.height,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Publication Year',
                                      style: GoogleFonts.quicksand(
                                          color: colordarkgrey,
                                          fontSize: 18.0)),
                                  13.width,
                                  Text(':',
                                      style: GoogleFonts.quicksand(
                                          color: colordarkgrey,
                                          fontSize: 18.0)),
                                  8.width,
                                  Text('2018',
                                      style: GoogleFonts.quicksand(
                                          color: colordarkgrey, fontSize: 18.0))
                                ],
                              ),
                            ],
                          ),
                        ),
                        10.height,
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color(0xffFFD233),
                                size: 23.0,
                              ),
                              Text(
                                '4.5/5',
                                style: GoogleFonts.quicksand(
                                    color: colordarkgrey, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        10.height,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Synopsis',
                                    style: GoogleFonts.quicksand(
                                        color: colordarkgrey, fontSize: 18.0),
                                  ),
                                  65.width,
                                  Text(
                                    ':',
                                    style: GoogleFonts.quicksand(
                                        color: colordarkgrey, fontSize: 18.0),
                                  )
                                ],
                              ),
                              8.height,
                              ReadMoreText(
                                content,
                                trimLines: 6,
                                colorClickableText: colorBold,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: ' ...Read More',
                                trimExpandedText: '  Show Less',
                                style: GoogleFonts.mulish(
                                    color: colordarkgrey, fontSize: 15.0),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                        28.height,
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Container(
                            height: 170.0,
                            decoration:
                                const BoxDecoration(color: colorSecondary),
                            width: double.infinity,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Text('Review'.toUpperCase(),
                                        style: GoogleFonts.quicksand(
                                            color: colorFourd,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    height: 120.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 5,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                              child: Container(
                                                width: 300.0,
                                                decoration: BoxDecoration(
                                                    color: colorwhite,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Reva Angelica',
                                                        style:
                                                            GoogleFonts.mulish(
                                                                color:
                                                                    colorblack,
                                                                fontSize: 20.0),
                                                      ),
                                                      5.height,
                                                      Text(
                                                        "Gila sih ini novel alurnya kerasa banyet nyatanya.",
                                                        style: GoogleFonts.mulish(
                                                            color:
                                                                colordarkgrey,
                                                            fontSize: 15.0),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        5.height,
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15.0, right: 25.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 2,
                                shadowColor: colorgrey,
                                fixedSize: const Size(110, 20),
                                backgroundColor: colorPrimary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0, vertical: 2.0),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Borrow Book'.toUpperCase(),
                                style: GoogleFonts.quicksand(
                                    color: colorwhite, fontSize: 12.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 125,
            right: 125,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7.0),
              child: Container(
                height: 170,
                child: Image.asset(
                  'assets/images/cover3.jpeg',
                  height: 170,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 654.0,
          //   right: 20.0,
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       elevation: 2,
          //       shadowColor: colorgrey,
          //       fixedSize: const Size(110, 20),
          //       backgroundColor: colorPrimary,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(15.0),
          //       ),
          //       padding:
          //           const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
          //     ),
          //     onPressed: () {},
          //     child: Text(
          //       'Borrow Book'.toUpperCase(),
          //       style: GoogleFonts.quicksand(color: colorwhite, fontSize: 12.0),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
