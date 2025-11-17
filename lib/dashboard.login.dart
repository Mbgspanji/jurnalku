import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardLogin extends StatelessWidget {
  const DashboardLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
        Text(
          "Profil Siswa",
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Rombel Siswa",
          style: TextStyle(fontSize: 13, color: Colors.black54),
        ),
          ],
        ),
        actions: [
          Padding(
        padding: const EdgeInsets.only(right: 16),
        child: CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage("https://via.placeholder.com/150"),
        ),
          ),
        ],
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

            _buildProgressAkademik(),

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
  Widget _buildProgressAkademik() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Progress Akademik",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),

          // Status Indicators
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatusItem(
                color: const Color(0xFF6A1B9A), // Ungu gelap
                label: "Selesai",
                value: "2",
              ),
              _buildStatusItem(
                color: const Color(0xFFAB47BC), // Ungu muda
                label: "Pending",
                value: "0",
              ),
              _buildStatusItem(
                color: const Color(0xFF90CAF9), // Biru muda
                label: "Belum",
                value: "0",
              ),
              _buildStatusItem(
                color: const Color(0xFF26A69A), // Teal
                label: "Hari Ini",
                value: "0",
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Lihat Progress Kamu
          InkWell(
            onTap: () {
              // Navigasi ke halaman progress
            },
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F7FA),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Lihat Progress Kamu →",
                  style: TextStyle(
                    color: Color(0xFF1565C0),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Kompetensi List
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
          InkWell(
            onTap: () {
              // Navigasi ke semua kompetensi
            },
            child: const Center(
              child: Text(
                "Lihat semua Kompetensi →",
                style: TextStyle(
                  color: Color(0xFF1565C0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper: Status Item
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

  // Helper: Competency Item
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
// ignore: unused_element
Widget _buildFooter() {
  return Container(
    width: double.infinity,
    color: const Color(0xFF1565C0), // bar berwarna biru
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: const Center(
      child: Text(
        '© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.',
        style: TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    ),
  );
}