import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jurnalku/account-settings.dart';
import 'package:jurnalku/catatan-sikap.dart';
import 'package:jurnalku/explore.dart';
import 'package:jurnalku/following.dart';
import 'package:jurnalku/dashboard.login.dart';
import 'package:jurnalku/panduan-pengguna.dart';
import 'package:jurnalku/profile_overview.dart';
import 'package:jurnalku/profile_portofolio.dart';
import 'package:jurnalku/profile_sertifikat.dart';
import 'Kompetensi.dart';
import 'login.dart';

class CatatanSikap extends StatefulWidget {
  const CatatanSikap({super.key});

  @override
  State<CatatanSikap> createState() => _CatatanSikapState();
}

class _CatatanSikapState extends State<CatatanSikap> {
  final List<Map<String, dynamic>> catatanData = [
    {
      "judul": "Catatan Sikap",
      "no": "-",
      "kategori": "-",
      "catatan": "-",
      "status": "-",
      "dilaporkan": "-",
      "updateTerakhir": "-",
      "aksi": "-",
    },
  ];

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
                        MaterialPageRoute(builder: (context) => Explore()),
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
                    case "Panduan Penggunaan":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Panduan()),
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
        padding: const EdgeInsets.all(17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Catatan Sikap Saya",
                style: GoogleFonts.inter(
                  fontSize: 30,
                  color: Color(0xFF111827),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Lihat catatan sikap dan perilaku yang telah dilaporkan",
                style: GoogleFonts.inter(
                  fontSize: 17.9,
                  color: Color(0xFF4B5563),
                ),
              ),
              SizedBox(height: 20),

              // PERHATIAN
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFBEB),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFFFACC15), width: 1),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: Color(0xFFD97706),
                      size: 21,
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Perhatian",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Color(0xFF92400E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Jika Anda merasa ada catatan yang tidak sesuai atau keliru, "
                            "silakan hubungi guru jurusan untuk mengajukan klarifikasi.",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Color(0xFFB45309),
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),

              // STATISTIK
              containerStat(
                "Total Catatan",
                "0",
                "assets/icons/document.svg",
                const Color(0xFFDBEAFE),
              ),
              SizedBox(height: 25),

              containerStat(
                "Dalam Perbaikan",
                "0",
                "assets/icons/thunder.svg",
                const Color(0xFFFEF9C3),
              ),
              SizedBox(height: 25),

              containerStat(
                "Sudah Berubah",
                "0",
                "assets/icons/check-ring-round.svg",
                const Color(0xFFDCFCE7),
              ),
              SizedBox(height: 30),

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: catatanData.length,
                itemBuilder: (context, index) {
                  final item = catatanData[index];

                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.symmetric(horizontal: 20),
                      childrenPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                      expandedAlignment: Alignment.centerLeft,
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      title: Text(
                        item["judul"],
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      children: [
                        _rowInfo("No", item["no"]),
                        _rowInfo("Kategori", item["kategori"]),
                        _rowInfo("Catatan", item["catatan"]),
                        _rowInfo("Status", item["status"]),
                        _rowInfo("Dilaporkan", item["dilaporkan"]),
                        _rowInfo("Update Terakhir", item["updateTerakhir"]),
                        _rowInfo("Aksi", item["aksi"]),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk statistic box
  Widget containerStat(String title, String value, String iconPath, Color bg) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 15,
                  color: const Color(0xFF4B5563),
                ),
              ),
              SizedBox(height: 5),
              Text(
                value,
                style: GoogleFonts.inter(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827),
                ),
              ),
            ],
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(shape: BoxShape.circle, color: bg),
            child: Center(
              child: SvgPicture.asset(iconPath, width: 24, height: 24),
            ),
          ),
        ],
      ),
    );
  }

  Widget _rowInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 3),
          Text(
            value,
            style: GoogleFonts.inter(fontSize: 14, color: Colors.black54),
          ),
          SizedBox(height: 10),
        ],
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
