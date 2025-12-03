import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku/account-settings.dart';
import 'package:jurnalku/explore.dart';
import 'package:jurnalku/following.dart';
import 'package:jurnalku/dashboard.login.dart';
import 'package:jurnalku/profile_overview.dart';
import 'package:jurnalku/profile_portofolio.dart';
import 'package:jurnalku/profile_sertifikat.dart';
import 'Kompetensi.dart';
import 'login.dart';
import 'package:jurnalku/catatan-sikap.dart';
import 'package:jurnalku/panduan-pengguna.dart';


class DashboardLogin extends StatelessWidget {
  const DashboardLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  "assets/images/bgsecondary.svg",
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 280,
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Selamat Datang di Jurnalku",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 14),
                        Text(
                          "Solusi cerdas untuk memantau perkembangan kompetensi siswa\nsecara efektif",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14.5,
                            height: 1.6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1565C0), Color(0xFF1976D2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Apa itu Jurnalku?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time. Dengan fitur lengkap, proses pemantauan menjadi lebih mudah dan transparan.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Fitur cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  _buildFeatureCard(
                    icon: FontAwesomeIcons.school,
                    title: "Dirancang Khusus",
                    subtitle:
                        "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.",
                  ),
                  const SizedBox(height: 20),
                  _buildFeatureCard(
                    icon: Icons.school,
                    title: "Efektif",
                    subtitle:
                        "Memudahkan siswa dan guru melihat perkembangan secara real-time.",
                  ),
                  const SizedBox(height: 20),
                  _buildFeatureCard(
                    icon: Icons.school_outlined,
                    title: "Terintegrasi",
                    subtitle:
                        "Pengajuan kompetensi siswa, validasi dan laporan perkembangan yang transparan.",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "MENU APLIKASI",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildMenuItem(
                    icon: Icons.person_outline,
                    title: "Profil",
                    subtitle: "Lihat dan kelola profilmu di sini.",
                    onTap: () {},
                  ),
                  _buildMenuItem(
                    icon: Icons.work_outline,
                    title: "Portofolio",
                    subtitle:
                        "Lihat dan kelola portofolio kompetensimu di sini.",
                    onTap: () {},
                  ),
                  _buildMenuItem(
                    icon: Icons.verified_outlined,
                    title: "Sertifikat",
                    subtitle:
                        "Lihat dan unduh sertifikat kompetensimu di sini.",
                    onTap: () {},
                  ),
                  const SizedBox(height: 12),
                  _buildMenuItem(
                    icon: Icons.menu_book_outlined,
                    title: "Jurnal Pembiasaan",
                    subtitle: "Catat dan pantau kegiatan pembiasaan harianmu.",
                    onTap: () {},
                  ),
                  _buildMenuItem(
                    icon: Icons.how_to_reg_outlined,
                    title: "Permintaan Saksi",
                    subtitle: "Lihat teman yang mengajukan permintaan saksi.",
                    onTap: () {},
                  ),
                  _buildMenuItem(
                    icon: Icons.bar_chart_outlined,
                    title: "Progress",
                    subtitle:
                        "Lihat kemajuan kompetensi dan pencapaian belajarmu.",
                    onTap: () {},
                  ),
                  _buildMenuItem(
                    icon: Icons.warning_amber_outlined,
                    title: "Catatan Sikap",
                    subtitle: "Lihat catatan sikap dan perilaku dari guru.",
                    onTap: () {},
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),

            _buildStatistikKompetensi(),

            const SizedBox(height: 30),

            _buildProgressAkademik(context),

            const SizedBox(height: 30),

            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 48, color: const Color(0xFF1565C0)),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14.5,
              color: Colors.black54,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 22,
          backgroundColor: const Color(0xFF1565C0).withOpacity(0.1),
          child: Icon(icon, color: const Color(0xFF1565C0), size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 13, color: Colors.black54),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.black54),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onTap: onTap,
      ),
    );
  }

  Widget _buildStatCard({
    required String title,
    required String value,
    required Icon icon,
    required Color color,
    required String label,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      label,
                      style: TextStyle(
                        fontSize: 13,
                        color: color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 8),
              icon,
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatistikKompetensi() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "STATISTIK KOMPETENSI",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          _buildStatCard(
            icon: Icon(Icons.check_circle_outline),
            title: "Materi Diselesaikan",
            value: "0",
            color: Colors.green,
            label: "Selesai",
          ),
          const SizedBox(height: 12),
          _buildStatCard(
            icon: Icon(Icons.access_time),
            title: "Pengajuan Pending",
            value: "0",
            color: Colors.orange,
            label: "Pending",
          ),
          const SizedBox(height: 12),
          _buildStatCard(
            icon: Icon(Icons.calendar_today),
            title: "Materi Hari Ini",
            value: "0",
            color: Colors.blue,
            label: "Hari Ini",
          ),
          const SizedBox(height: 12),
          _buildStatCard(
            icon: Icon(Icons.refresh),
            title: "Materi Revisi",
            value: "0",
            color: Colors.purple,
            label: "Revisi",
          ),
        ],
      ),
    );
  }

  // ignore: unused_element
  Widget _buildProgressAkademik(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Progress Akademik",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),

          // Bagian Status (kiri tulisan, kanan angka)
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                _progressRow(
                  color: const Color(0xFF6A1B9A),
                  label: "Selesai",
                  value: "2",
                ),
                const SizedBox(height: 10),
                _progressRow(
                  color: const Color(0xFF3F51B5),
                  label: "Pending",
                  value: "0",
                ),
                const SizedBox(height: 10),
                _progressRow(
                  color: const Color(0xFF81D4FA),
                  label: "Belum",
                  value: "0",
                ),
                const SizedBox(height: 10),
                _progressRow(
                  color: const Color(0xFF00838F),
                  label: "Hari Ini",
                  value: "0",
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Tombol Lihat Progress Kamu
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Kompetensi()),
              );
            },
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: const Text(
                "Lihat Progress Kamu →",
                style: TextStyle(
                  color: Color(0xFF1565C0),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Card kompetensi
          _buildCompetencyItem(
            title: "Implementasi Penggunaan Postman",
            status: "Approved",
            statusColor: Colors.green,
          ),

          const SizedBox(height: 12),

          _buildCompetencyItem(
            title: "Project Akhir : Web Management",
            status: "Approved",
            statusColor: Colors.green,
          ),

          const SizedBox(height: 16),

          // Lihat semua kompetensi
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Kompetensi()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: const Text(
                  "Lihat semua Kompetensi →",
                  style: TextStyle(
                    color: Color(0xFF1565C0),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusItem({
    required Color color,
    required String label,
    required String value,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }


  Widget _progressRow({
    required Color color,
    required String label,
    required String value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            const SizedBox(width: 10),
            Text(
              label,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildCompetencyItem({
    required String title,
    required String status,
    required Color statusColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              status,
              style: TextStyle(
                color: statusColor,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildFooter() {
  return Container(
    width: double.infinity,
    color: const Color(0xFF1565C0), // bar berwarna biru
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: const Center(
      child: Text(
        '© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.',
        style: TextStyle(fontSize: 12, color: Colors.white),
      ),
    ),
  );
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
