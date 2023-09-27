// ignore_for_file: unused_import

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:uts_project/cartpage.dart';
import 'package:uts_project/detailPage.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Color _containerColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffFFFFFF),
            toolbarHeight: 80,
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 500,
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF2F2F7)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Iconsax.search_normal),
                          color: Color(0xff292D32),
                        ),
                        Text('Cari pakaian pria',
                            style: TextStyle(color: Color(0xff292D32)))
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.notification),
                    color: Color(0xff292D32),
                    iconSize: 32,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => cartPage()));
                    },
                    icon: Icon(Iconsax.shopping_cart),
                    color: Color(0xff292D32),
                    iconSize: 32,
                  ),
                ],
              ),
            )),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Image.asset('assets/Banner.png'),
              ),
              Container(
                padding: EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kategori',
                      style: GoogleFonts.poppins(
                          color: Color(0xff292D32),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Lihat semua',
                      style: GoogleFonts.poppins(
                          color: Color(0xff00B14F),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              _FilterBar(),
              SizedBox(
                height: 24,
              ),
              _Item_1(),
              SizedBox(
                height: 24,
              ),
              _Item_2(),
              SizedBox(
                height: 24,
              ),
              _Item_3(),
            ],
          ),
          _BtmNavbar(),
        ]));
  }

  BottomNavigationBar _BtmNavbar() {
    return BottomNavigationBar(
        selectedItemColor: Color(0xff00B14F),
        currentIndex: 0,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Iconsax.home5), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.lovely5), label: 'Favorit'),
          BottomNavigationBarItem(icon: Icon(Iconsax.bill), label: 'Transaksi'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_circle5), label: 'Profil'),
        ]);
  }

  Row _Item_3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset('assets/Kemeja_Coklat.png'),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(right: 51),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kemeja Pria Polos',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text('Lengan Pendek Oxford',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Rp119.000',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset('assets/Hoodie.png'),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(right: 51),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Human Greatness',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text('Hoodie Hitam',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Rp229.000',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row _Item_2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset('assets/Celana.png', fit: BoxFit.cover),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(right: 51),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skinny Jeans Dark',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text('Blue Wanita',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Rp379.900',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset('assets/Kacamata.png'),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(right: 51),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kacamata Baca',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text('Anti radiasi Blue Ray',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Rp125.000',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row _Item_1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset('assets/Kemeja.png'),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(right: 51),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Batik Pria Lengan',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text('Panjang',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Rp199.900',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset('assets/Sepatu.png'),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(right: 51),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => detailPage()));
                    },
                    child: Text(
                      'New Balance 992',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Text('Grey Original',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Rp1.240.000',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  SingleChildScrollView _FilterBar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(top: 26),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                if (_containerColor == Colors.transparent) {
                  setState(() {
                    _containerColor = Color(0xff00B14F);
                  });
                } else {
                  Colors.transparent;
                }
              },
              child: Container(
                child: Center(
                    child: Text(
                  'Semua',
                  style: GoogleFonts.poppins(
                      color: Color(0xff292D32),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                  color: _containerColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            GestureDetector(
              onTap: () {
                if (_containerColor == Colors.transparent) {
                  setState(() {
                    _containerColor = Color(0xff00B14F);
                  });
                } else {
                  Colors.transparent;
                }
              },
              child: Container(
                child: Center(
                    child: Text(
                  'Sepatu',
                  style: GoogleFonts.poppins(
                      color: Color(0xff292D32),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                  color: _containerColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            GestureDetector(
              onTap: () {
                if (_containerColor == Colors.transparent) {
                  setState(() {
                    _containerColor = Color(0xff00B14F);
                  });
                } else {
                  Colors.transparent;
                }
              },
              child: Container(
                child: Center(
                    child: Text(
                  'Kaos',
                  style: GoogleFonts.poppins(
                      color: Color(0xff292D32),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                  color: _containerColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            GestureDetector(
              onTap: () {
                if (_containerColor == Colors.transparent) {
                  setState(() {
                    _containerColor = Color(0xff00B14F);
                  });
                } else {
                  Colors.transparent;
                }
              },
              child: Container(
                child: Center(
                    child: Text(
                  'Aksesoris',
                  style: GoogleFonts.poppins(
                      color: Color(0xff292D32),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                  color: _containerColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
          ],
        ),
      ),
    );
  }
}
