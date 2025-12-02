import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jurnalku/account-settings.dart';
import 'package:jurnalku/following.dart';
import 'package:jurnalku/dashboard.login.dart';
import 'package:jurnalku/profile_overview.dart';
import 'package:jurnalku/profile_portofolio.dart';
import 'package:jurnalku/profile_sertifikat.dart';
import 'package:jurnalku/explore_widget.dart';
import 'Kompetensi.dart';
import 'login.dart';
import 'dart:ui';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 6,
        toolbarHeight: 65,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.bookOpen,
                      size: 22,
                      color: Colors.blue[900],
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Jurnalku",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[900],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardLogin(),
                    ),
                  );
                },
                label: const Text(
                  "Dashboard",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRect(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                      child: Image.asset(
                        'assets/images/Banner.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 350,
                      ),
                    ),
                  ),
                  IgnorePointer(
                    child: Container(color: Colors.black.withOpacity(0.25)),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    right: 20,
                    child: Column(
                      children: [
                        Text(
                          'Direktori Siswa',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Temukan dan jelajahi profil siswa SMK Wikrama Bogor',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 30),
                        Material(
                          elevation: 6,
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText:
                                              'Cari nama siswa, NIS, atau rombel...',
                                          prefixIcon: Icon(Icons.search),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    SizedBox(
                                      width: 80,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(
                                            0xFF0D47A1,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 12.0,
                                          ),
                                          child: Text(
                                            'Cari',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 14,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  hint: const Text('Filter Lanjutan'),
                                  items: const [
                                    DropdownMenuItem(
                                      value: '1',
                                      child: Text('Pilihan 1'),
                                    ),
                                    DropdownMenuItem(
                                      value: '2',
                                      child: Text('Pilihan 2'),
                                    ),
                                  ],
                                  onChanged: (v) {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Menampilkan 1 - 12 dari 538 siswa',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 10),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 15),
                  ExploreSiswaWidget(
                    profile: 'assets/images/me.jpg',
                    nama: 'Ahmad Fauzi',
                    nis: 12309675,
                    rombel: 'PPLG XII-5',
                    rayon: 'Cib 1',
                    portofolio: 3,
                    sertifikat: 5,
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Colors.grey.shade300),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 16,
                              color: Colors.grey[300],
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Previous",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Colors.white),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Next", style: TextStyle(color: Colors.black)),
                            SizedBox(width: 5),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue[900]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.whatsapp,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(width: 30),
                        FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(width: 30),
                        FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(width: 30),
                        FaIcon(
                          FontAwesomeIcons.youtube,
                          size: 24,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      '© GEN-28 PPLG SMK Wikrama Bogor.  All Right Reserved.',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

PopupMenuItem<String> _menuItem(IconData icon, String title) {
  return PopupMenuItem<String>(
    value: title,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Row(
      children: [
        Icon(icon, size: 20, color: const Color(0xFF4C5767)),
        const SizedBox(width: 16),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF4C5767),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
