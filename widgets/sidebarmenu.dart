import 'package:flutter/material.dart';


class SidebarMenu extends StatelessWidget {
  const SidebarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 280,
        color: Colors.white,
        child: ListView(
          children: [
            const SizedBox(height: 20),

            _buildMenuItem(Icons.home_outlined, "Dashboard"),
            _buildMenuItem(Icons.person_outline, "Profil"),
            _buildMenuItem(Icons.explore_outlined, "Jelajahi"),

            const Divider(),

            // ============================
            // DROPDOWN MENU
            // ============================
            ExpansionTile(
              leading: const Icon(Icons.book_outlined, color: Color(0xFF6B7280)),
              title: const Text(
                "Jurnal Pembiasaan",
                style: TextStyle(fontSize: 16, color: Color(0xFF4B5563)),
              ),
              childrenPadding: const EdgeInsets.only(left: 50, bottom: 10),
              children: const [
                _DropdownItem("Input Jurnal"),
                _DropdownItem("Riwayat"),
                _DropdownItem("Laporan Harian"),
              ],
            ),

            // MENU LAIN
            _buildMenuItem(Icons.person_search_outlined, "Permintaan Saksi"),
            _buildMenuItem(Icons.bar_chart_outlined, "Progress"),
            _buildMenuItem(Icons.error_outline, "Catatan Sikap"),

            const Divider(),

            // DROPDOWN 2 (contoh)
            ExpansionTile(
              leading: const Icon(Icons.menu_book_outlined,
                  color: Color(0xFF6B7280)),
              title: const Text(
                "Panduan Penggunaan",
                style: TextStyle(fontSize: 16, color: Color(0xFF4B5563)),
              ),
              childrenPadding: const EdgeInsets.only(left: 50, bottom: 10),
              children: const [
                _DropdownItem("Video Tutorial"),
                _DropdownItem("Dokumentasi PDF"),
              ],
            ),

            _buildMenuItem(Icons.settings_outlined, "Pengaturan Akun"),
            _buildMenuItem(Icons.logout, "Log Out"),

            const SizedBox(height: 30),
            Center(
              child: Text(
                "v1.0",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  static Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, size: 22, color: Color(0xFF6B7280)),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Color(0xFF4B5563)),
      ),
      onTap: () {},
    );
  }
}

// ITEM DROPDOWN
class _DropdownItem extends StatelessWidget {
  final String label;
  const _DropdownItem(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label,
          style: const TextStyle(fontSize: 14, color: Color(0xFF6B7280))),
      onTap: () {},
      dense: true,
      visualDensity: VisualDensity.compact,
    );
  }
}
