import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const HalamanIndex());
}

class HalamanIndex extends StatelessWidget {
  const HalamanIndex({super.key});

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
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Container(
                height: 550,
                decoration: BoxDecoration(
                  color: Color(0xFFD35400),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset("assets/bab1.webp", width: 150),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Text(
                        "Lesson 1: Start the Foundation",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                      child: Text(
                        "Mengenalkan alfabet, pelafalan, dan struktur kalimat dasar",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
