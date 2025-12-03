import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatatanSikap extends StatelessWidget {
  const CatatanSikap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black.withOpacity(0.1),

        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.home_outlined, color: Color(0xFF64748B)),
          onPressed: () {},
        ),

        actions: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Muhamad Fadlan",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "PPLG XII-5",
                    style: GoogleFonts.inter(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(width: 10),

              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/me.jpg"),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ],
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
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Bagian Kiri (Teks)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Catatan",
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            color: const Color(0xFF4B5563),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "0",
                          style: GoogleFonts.inter(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF111827),
                          ),
                        ),
                      ],
                    ),

                    // Bagian Kanan (Icon bulat biru muda + icon dokumen)
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(
                          0xFFDBEAFE,
                        ), // Biru muda seperti screenshot
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/document.svg",
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Bagian Kiri (Teks)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dalam Perbaikan",
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            color: const Color(0xFF4B5563),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "0",
                          style: GoogleFonts.inter(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF111827),
                          ),
                        ),
                      ],
                    ),

                    // Bagian Kanan (Icon bulat biru muda + icon dokumen)
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(
                          0xFFFEF9C3,
                        ), // Biru muda seperti screenshot
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/thunder.svg",
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Bagian Kiri (Teks)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sudah Berubah",
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            color: const Color(0xFF4B5563),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "0",
                          style: GoogleFonts.inter(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF111827),
                          ),
                        ),
                      ],
                    ),

                    // Bagian Kanan (Icon bulat biru muda + icon dokumen)
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(
                          0xFFDCFCE7,
                        ), // Biru muda seperti screenshot
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/check-ring-round.svg",
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // ============================
              // TABEL CATATAN SIKAP (SCROLL HORIZONTAL)
              // ============================
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),

                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      // HEADER
                      Container(
                        width:
                            1000, // Biar tabel lebih lebar dan bisa di-scroll
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF9FAFB),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 0.4),
                          ),
                        ),
                        child: Row(
                          children: [
                            headerCell("NO", flex: 1),
                            headerCell("KATEGORI", flex: 2),
                            headerCell("CATATAN", flex: 2),
                            headerCell("STATUS", flex: 2),
                            headerCell("DILAPORKAN", flex: 2),
                            headerCell("UPDATE TERAKHIR", flex: 2),
                            headerCell("AKSI", flex: 1),
                          ],
                        ),
                      ),

                      // BODY KOSONG
                      Container(
                        width: 1000,
                        padding: const EdgeInsets.symmetric(
                          vertical: 40,
                          horizontal: 16,
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/check-ring-round (1).svg",
                              width: 80,
                            ),
                            SizedBox(height: 12),
                            Text(
                              "Tidak ada catatan",
                              style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4B5563),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Belum ada catatan sikap yang masuk.",
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerCell(String text, {int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF6B7280),
        ),
      ),
    );
  }
}
