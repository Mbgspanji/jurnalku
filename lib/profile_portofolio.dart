import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

class ProfilePortofolio extends StatelessWidget {
  const ProfilePortofolio({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, bottom: 13, left: 5),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardLogin(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 14,
                  color: Colors.white,
                ),
                label: const Text(
                  "Kembali",
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
            ),

            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomLeft,
              children: [
                // Banner Image
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('assets/images/wikrama-mewah.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  bottom: -50,
                  left: 20,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 4),
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/images/me.jpg'),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),

            Padding(
              padding: EdgeInsets.all(18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama Siswa",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "NIS | Rombel | Rayon",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.share, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.2),
                ),
              ),
              child: Row(
                children: [
                  _buildTabItem(
                    context,
                    "Overview",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileOverview(),
                        ),
                      );
                    },
                  ),
                  _buildTabItem(
                    context,
                    "Portfolio",
                    isActive: true,
                    activeColor: const Color(0xFF448AFF),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePortofolio(),
                        ),
                      );
                    },
                  ),
                  _buildTabItem(
                    context,
                    "Sertifikat",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileSertifikat(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 300),
                ElevatedButton.icon(
                  onPressed: () {
                    
                  },
                  icon: const Icon(
                    Icons.add_circle_outline,
                    size: 16,
                    color: Colors.white,
                  ),
                  label: const Text(
                    "Tambah Portofolio",
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
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.symmetric(vertical: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.work, color: Color(0xFF8D6E63), size: 70),
                  SizedBox(height: 10),
                  Text(
                    'Belum ada Portofolio',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Portofolio akan ditampilkan di sini',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Ketika sudah ditambahkan',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      
                    },
                    icon: const Icon(
                      Icons.add_circle_outline,
                      size: 16,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Tambah Portofolio Pertama",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(
    BuildContext context,
    String title, {
    bool isActive = false,
    Color? activeColor,
    VoidCallback? onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.zero,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            border: isActive
                ? Border(
                    bottom: BorderSide(
                      color: activeColor ?? Colors.blue,
                      width: 3,
                    ),
                  )
                : null,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: isActive
                    ? (activeColor ?? Colors.blue)
                    : Colors.grey[600],
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                fontSize: 15,
              ),
            ),
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
