import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard.login.dart';
import 'Kompetensi.dart';
import 'login.dart';
import 'following.dart';


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
        style: GoogleFonts.inter(
          fontSize: 14,
          color: Colors.black87,
        ),
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
                      builder: (context) => DashboardLogin()),
                    );
                    break;
                  case "Progress":
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kompetensi()),
                    );
                    break;
                  case "Pengaturan Akun":
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountSettings()),
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
                ),],
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

                    Center(
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 55,
                                backgroundImage: AssetImage("assets/images/me.jpg"),
                              ),

                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF003B95),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.camera_alt,
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
                    ),

                    const SizedBox(height: 20),

                    // FIELD NAMA
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

                    // FIELD NIS
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

                    // FIELD ROMBEL
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

                    // FIELD RAYON
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
