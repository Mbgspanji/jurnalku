import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        elevation: 1,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black.withOpacity(0.1),

        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.home_outlined,
            color: Color(0xFF64748B),
          ),
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
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
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
                  Text(
                    "Dashboard / ",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Color(0xFF64748B),
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
