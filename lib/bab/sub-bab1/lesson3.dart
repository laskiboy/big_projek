import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bab1Tiga extends StatelessWidget {
  const Bab1Tiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "ExcelLearn",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.black,
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Container(color: Colors.grey.shade400, height: 1.0),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                "Lessons 2: Self Introduction",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "Tujuan: ",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                "Kalimat dan ungkapan umum dalam Bahasa Inggris untuk kehidupan sehari-hari",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Table(
                border: TableBorder.all(color: Colors.grey),
                columnWidths: {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(3),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Color(0xFFD35400)),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'English',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Artinya',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Kapan Digunakan',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("Hello!", style: GoogleFonts.poppins()),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("Halo!", style: GoogleFonts.poppins()),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Umum, kapan saja",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("Hi!", style: GoogleFonts.poppins()),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("Hai!", style: GoogleFonts.poppins()),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Lebih santai/informal",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Good morning!",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Selamat pagi!",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Pagi hari (sampai jam 11)",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Good afternoon!",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Selamat siang!",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Siang hari (jam 12–5 sore)",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Good evening!",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Selamat malam!",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Malam hari (setelah jam 5)",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Good night!",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Selamat tidur!",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Sebelum tidur (bukan salam)",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      true,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD35400),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
