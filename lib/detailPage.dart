// ignore_for_file: unused_import, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:uts_project/cartpage.dart';
import 'package:uts_project/homePage.dart';

class detailPage extends StatefulWidget {
  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          toolbarHeight: 80,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homePage()));
                },
                icon: Icon(LucideIcons.arrowLeft),
                color: Color(0xff292D32),
              ),
              Text('Detail Produk',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff292D32),
                  )),
              IconButton(
                onPressed: () {
                },
                icon: Icon(Iconsax.heart5),
                color: Color(0xffFF3939),
              ),
            ],
          ),
        ),
        body: Column(children: [
          _Gambar(),
          _DetailProduct(),
          _PilihSize(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            decoration: BoxDecoration(color: Color(0xffF2F2F7)),
            margin: EdgeInsets.only(top: 24),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp1.240.000',
                    style: GoogleFonts.poppins(
                        color: Color(0xff292D32),
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: 183,
                      height: 47,
                      decoration: BoxDecoration(
                          color: Color(0xff00B14F),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cartPage()));
                        },
                        child: Text(
                          'Tambah Keranjang',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF)),
                        ),
                      ))
                ],
              ),
            ),
          )
        ]));
  }

  Column _PilihSize() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 270),
          child: Text(
            'Pilih Ukuran',
            style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff292D32)),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(right: 55),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 51,
                width: 53,
                decoration: BoxDecoration(
                    color: Color(0xff00B14F).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xff00B14F), width: 1)),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '39',
                    style: GoogleFonts.poppins(
                        color: Color(0xff00B14F),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                height: 51,
                width: 53,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '40',
                    style: GoogleFonts.poppins(
                        color: Color(0xff00B14F),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                height: 51,
                width: 53,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '41',
                    style: GoogleFonts.poppins(
                        color: Color(0xff292D32),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                height: 51,
                width: 53,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '42',
                    style: GoogleFonts.poppins(
                        color: Color(0xff292D32),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                height: 51,
                width: 53,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '43',
                    style: GoogleFonts.poppins(
                        color: Color(0xff292D32),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Column _DetailProduct() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 39, top: 24),
          child: Text(
            'New Balance 992 Grey Original',
            style:
                GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          width: 11,
        ),
        Container(
          margin: EdgeInsets.only(left: 160),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Iconsax.star1,
                color: Color(0xffFFC400),
              ),
              Text(
                '4.8',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                '(102) | 67 ulasan',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Container(
          width: 382,
          height: 150,
          child: Column(
            children: [
              RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text:
                        "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin...",
                    style: GoogleFonts.poppins(
                        color: Color(0xff292D32), fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Baca selengkapnya',
                          style: GoogleFonts.poppins(color: Color(0xff00B14F)))
                    ],
                  )),
            ],
          ),
        )
      ],
    );
  }

  Container _Gambar() {
    return Container(
        margin: EdgeInsets.only(top: 24),
        alignment: Alignment.center,
        child: Image.asset('assets/Sepatu_NB.png'));
  }
}
