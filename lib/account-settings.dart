import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jurnalku/account-settings.dart';
import 'package:jurnalku/catatan-sikap.dart';
import 'package:jurnalku/explore.dart';
import 'package:jurnalku/following.dart';
import 'package:jurnalku/dashboard.login.dart';
import 'package:jurnalku/profile_overview.dart';
import 'package:jurnalku/profile_portofolio.dart';
import 'package:jurnalku/profile_sertifikat.dart';
import 'package:jurnalku/panduan-pengguna.dart';
import 'Kompetensi.dart';
import 'login.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  Widget fieldBox(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6F8),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(fontSize: 14, color: Colors.black87),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 65,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Icon(Icons.home, size: 22, color: const Color(0xFF4C5767)),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Nama Siswa",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Rombel Siswa",
                      style: TextStyle(fontSize: 13, color: Color(0xFF6F7A87)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: () async {
                  final RenderBox button =
                      context.findRenderObject() as RenderBox;
                  final RenderBox overlay =
                      Overlay.of(context).context.findRenderObject()
                          as RenderBox;

                  final position = RelativeRect.fromRect(
                    Rect.fromPoints(
                      button.localToGlobal(Offset.zero, ancestor: overlay),
                      button.localToGlobal(
                        button.size.bottomRight(Offset.zero),
                        ancestor: overlay,
                      ),
                    ),
                    Offset.zero & overlay.size,
                  );

                  final selected = await showMenu<String>(
                    context: context,
                    position: position.shift(const Offset(50, 55)),
                    elevation: 8,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    items: <PopupMenuEntry<String>>[
                      _menuItem(Icons.home_outlined, "Dashboard"),
                      _menuItem(Icons.person_outline, "Profil"),
                      _menuItem(Icons.explore_outlined, "Jelajahi"),

                      const PopupMenuDivider(),

                      _menuItem(Icons.book_outlined, "Jurnal Pembiasaan"),
                      _menuItem(
                        Icons.person_search_outlined,
                        "Permintaan Saksi",
                      ),
                      _menuItem(Icons.bar_chart_outlined, "Progress"),
                      _menuItem(Icons.error_outline, "Catatan Sikap"),

                      const PopupMenuDivider(),

                      _menuItem(Icons.menu_book_outlined, "Panduan Penggunaan"),
                      _menuItem(Icons.settings_outlined, "Pengaturan Akun"),
                      _menuItem(Icons.logout, "Log Out"),
                    ],
                  );

                  if (selected == null) return;

                  switch (selected) {
                    case "Dashboard":
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardLogin(),
                        ),
                      );
                      break;
                    case "Profil":
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileOverview(),
                        ),
                      );
                      break;
                    case "Jelajahi":
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Explore(),
                        ),
                      );
                      break;
                    case "Progress":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kompetensi()),
                      );
                      break;
                    case "Catatan Sikap":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CatatanSikap()),
                      );
                      break;
                    case "Pengaturan Akun":
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountSettings(),
                        ),
                      );
                      break;
                    case "Panduan Penggunaan":
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Panduan(),
                        ),
                      );
                    case "Log Out":
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                        (route) => false,
                      );
                      break;
                    case "Permintaan Saksi":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Following()),
                      );
                      break;
                    default:
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("$selected belum tersedia")),
                      );
                  }
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    "https://via.placeholder.com/150",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Settings",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Dashboard / ",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Color(0xFF64748B),
                      ),
                    ),
                  ),
                  Text(
                    "Account Settings",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Color(0xFF02398C),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Judul
                    Text(
                      "Informasi Profil",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            const CircleAvatar(
                              radius: 55,
                              backgroundImage: AssetImage(
                                "assets/images/me.jpg",
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: const BoxDecoration(
                                color: Color(0xFF003B95),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        Text(
                          "Klik untuk mengubah foto",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "Nama",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    fieldBox("Muhamad Fadlan"),

                    const SizedBox(height: 16),

                    Text(
                      "NIS",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    fieldBox("12309779"),

                    const SizedBox(height: 16),

                    Text(
                      "Rombel",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    fieldBox("PPLG XII-5"),

                    const SizedBox(height: 16),

                    Text(
                      "Rayon",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    fieldBox("Cia 5"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Judul
                    Text(
                      "Ubah Kata Sandi",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "Kata Sandi Lama",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    fieldBox("Masukan Password"),

                    const SizedBox(height: 4),
                    Text(
                      "Masukkan kata sandi lama anda",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 16),

                    Text(
                      "Kata Sandi Baru",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    fieldBox("Masukan Password"),

                    const SizedBox(height: 25),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20),
                            backgroundColor: const Color.fromARGB(
                              255,
                              1,
                              53,
                              144,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Text(
                                "Simpan Perubahan",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
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
