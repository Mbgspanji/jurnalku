import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dashboard.login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/Banner.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                          Text(
                            'Masuk untuk memulai ',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Jurnalku',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.indigo[700],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Text(
                        'Username atau NIS',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan username atau NIS',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(width: 0.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(width: 0.5, color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Password',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Masukkan password',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(width: 0.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(width: 0.5, color: Colors.grey),
                          ),
                          suffixIcon: Icon(Icons.remove_red_eye_sharp),
                        ),
                      ),
                      SizedBox(height: 35),
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 2, 57, 140),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DashboardLogin()),
                              );
                            },
                            child: Text(
                              'Masuk',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          'Lupa password? Hubungi guru laboran',
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(height: 60),
                      Center(
                        child: Text(
                          "Menyatukan Upaya untuk Kemajuan Siswa",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Jurnalku adalah aplikasi cerdas yang \n membantu guru dan siswa dalam memantau \n dan mengelola kompetensi keahlian siswa \n secara efektif.',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dirancang Untuk Sekolah Kami',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pemantauan yang Tersturktur',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fitur Praktis dan Bermanfaat',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pengajuan Kompetensi oleh Siswa',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Validasi dan Tanda Tangan Guru',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Setiap kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai bukti.',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                 SizedBox(height: 30),
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pantauan Real-Time dan Transpanran',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Monitoring langsung, menciptakan lingkungan belajar yang efisien',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 2, 57, 140),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jurnalku',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '© GEN-28 PPLG SMK Wikrama Bogor',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Menyatukan Upaya untuk Kemajuan Siswa',
                                style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 24),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DashboardLogin()),
                                );
                              },
                              tooltip: 'WhatsApp',
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white, size: 24),
                              onPressed: () {},
                              tooltip: 'Instagram',
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white, size: 24),
                              onPressed: () {},
                              tooltip: 'LinkedIn',
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.youtube, color: Colors.white, size: 24),
                              onPressed: () {},
                              tooltip: 'Youtube',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 20,
            width: 150,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 2, 57, 140),
              onPressed: () {},
              child: Text(
                'Jelajahi siswa',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
