import 'package:big_projek/bab/bab1.dart';
import 'package:big_projek/bab/bab2.dart';
import 'package:big_projek/bab/bab3.dart';
import 'package:big_projek/bab/bab4.dart';
import 'package:big_projek/bab/bab5.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const HalamanIndex());
}

class HalamanIndex extends StatefulWidget {
  const HalamanIndex({super.key});

  @override
  State<HalamanIndex> createState() => _HalamanIndexState();
}

class _HalamanIndexState extends State<HalamanIndex> {
  final List<Map<String, dynamic>> daftarBab = [
    {
      'title': 'Lesson 1: Start the Foundation',
      'desc': 'Mengenalkan kalimat sehari hari, dan struktur kalimat dasar',
      'image': 'assets/bab1.webp',
      'color': const Color(0xFFD35400),
      'page': const Bab1(),
    },
    {
      'title': 'Lesson 2: Greetings & Introduction',
      'desc': 'Belajar sapaan dan perkenalan diri dalam Bahasa Inggris',
      'image': 'assets/bab2.webp',
      'color': Colors.blue,
      'page': const Bab2(),
    },
    {
      'title': 'Lesson 3: Daily Activities',
      'desc': 'Kosakata dan kalimat untuk aktivitas harian',
      'image': 'assets/bab3.webp',
      'color': Colors.green,
      'page': const Bab3(),
    },
    {
      'title': 'Lesson 4: Numbers & Time',
      'desc': 'Belajar angka, waktu, dan cara mengucapkannya',
      'image': 'assets/bab4.webp',
      'color': Colors.purple,
      'page': const Bab4(),
    },
    {
      'title': 'Lesson 5: Food & Drink',
      'desc': 'Kosakata seputar makanan dan minuman',
      'image': 'assets/bab5.webp',
      'color': Colors.teal,
      'page': const Bab5(),
    },
  ];
  List<List<bool>> semuaProgress = List.generate(
    5,
    (_) => List.filled(5, false),
  );

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
        body: ListView.builder(
          padding: const EdgeInsets.only(top: 25),
          itemCount: daftarBab.length,
          itemBuilder: (context, index) {
            final bab = daftarBab[index];
            final progress = semuaProgress[index];

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Container(
                height: 450,
                decoration: BoxDecoration(
                  color: bab['color'],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(bab['image'], width: 150),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        bab['title'],
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 10,
                      ),
                      child: Text(
                        bab['desc'],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.star, color: Colors.white),
                          Text(
                            "${progress.where((e) => e).length}",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "/5",
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 10,
                      ),
                      child: SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bab['page'],
                              ),
                            );

                            if (result is List<bool>) {
                              setState(() {
                                semuaProgress[index] = result;
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: bab['color'],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Mulai Lesson!',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// class HalamanIndexDoloe extends StatelessWidget {
//   const HalamanIndexDoloe({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: Text(
//             "ExcelLearn",
//             style: GoogleFonts.poppins(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.more_vert),
//               color: Colors.black,
//             ),
//           ],
//           backgroundColor: Colors.white,
//           elevation: 0,
//           bottom: PreferredSize(
//             preferredSize: Size.fromHeight(1.0),
//             child: Container(color: Colors.grey.shade400, height: 1.0),
//           ),
//         ),
//         body: ListView(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(top: 25, left: 25, right: 25),
//               child: Container(
//                 height: 450,
//                 decoration: BoxDecoration(
//                   color: Color(0xFFD35400),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Image.asset("assets/bab1.webp", width: 150),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 20,
//                         left: 20,
//                         right: 20,
//                       ),
//                       child: Text(
//                         "Lesson 1: Start the Foundation",
//                         style: GoogleFonts.poppins(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 50,
//                         right: 50,
//                         top: 10,
//                       ),
//                       child: Text(
//                         "Mengenalkan kalimat sehari hari, dan struktur kalimat dasar",
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.poppins(
//                           fontSize: 16,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.star, color: Colors.white),
//                           Text(
//                             "${bab1Progress.where((e) => e).length}/5",
//                             style: GoogleFonts.poppins(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           Text(
//                             "/5",
//                             style: GoogleFonts.poppins(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 30,
//                         left: 40,
//                         right: 40,
//                       ),
//                       child: SizedBox(
//                         width: 300,
//                         height: 50,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const Bab1(),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: const Color(0xFFD35400),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: Text(
//                             'Mulai Lesson!',
//                             style: GoogleFonts.poppins(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 25, left: 25, right: 25),
//               child: Container(
//                 height: 450,
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Image.asset("assets/bab2.webp", width: 150),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 20,
//                         left: 20,
//                         right: 20,
//                       ),
//                       child: Text(
//                         "Lesson 2: Make A Sentences",
//                         style: GoogleFonts.poppins(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 50,
//                         right: 50,
//                         top: 10,
//                       ),
//                       child: Text(
//                         "Belajar membuat kalimat yang bisa digunakan dalam percakapan sehari-hari",
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.poppins(
//                           fontSize: 16,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.star, color: Colors.white),
//                           Text(
//                             "${bab2Progress.where((e) => e).length}/5",
//                             style: GoogleFonts.poppins(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           Text(
//                             "/5",
//                             style: GoogleFonts.poppins(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 30,
//                         left: 40,
//                         right: 40,
//                       ),
//                       child: SizedBox(
//                         width: 300,
//                         height: 50,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const Bab2(),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.green,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: Text(
//                             'Mulai Lesson!',
//                             style: GoogleFonts.poppins(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 25, left: 25, right: 25),
//               child: Container(
//                 height: 450,
//                 decoration: BoxDecoration(
//                   color: Colors.teal,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Image.asset("assets/bab3.webp", width: 150),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 20,
//                         left: 20,
//                         right: 20,
//                       ),
//                       child: Text(
//                         "Lesson 3: Let’s Practice Talking",
//                         style: GoogleFonts.poppins(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 50,
//                         right: 50,
//                         top: 10,
//                       ),
//                       child: Text(
//                         "Melatih kemampuan mendengar dan berbicara Bahasa Inggris secara aktif",
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.poppins(
//                           fontSize: 16,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.star, color: Colors.white),
//                           Text(
//                             "${bab3Progress.where((e) => e).length}/5",
//                             style: GoogleFonts.poppins(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           Text(
//                             "/5",
//                             style: GoogleFonts.poppins(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 30,
//                         left: 40,
//                         right: 40,
//                       ),
//                       child: SizedBox(
//                         width: 300,
//                         height: 50,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const Bab3(),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.teal,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: Text(
//                             'Mulai Lesson!',
//                             style: GoogleFonts.poppins(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 25, left: 25, right: 25),
//               child: Container(
//                 height: 450,
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Image.asset("assets/bab4.webp", width: 150),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 20,
//                         left: 20,
//                         right: 20,
//                       ),
//                       child: Text(
//                         "Lesson 4: Understand & Express",
//                         style: GoogleFonts.poppins(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 50,
//                         right: 50,
//                         top: 10,
//                       ),
//                       child: Text(
//                         "Meningkatkan kemampuan membaca dan menulis dalam Bahasa Inggris",
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.poppins(
//                           fontSize: 16,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.star, color: Colors.white),
//                           Text(
//                             "${bab4Progress.where((e) => e).length}/5",
//                             style: GoogleFonts.poppins(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           Text(
//                             "/5",
//                             style: GoogleFonts.poppins(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 30,
//                         left: 40,
//                         right: 40,
//                       ),
//                       child: SizedBox(
//                         width: 300,
//                         height: 50,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const Bab4(),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.blue,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: Text(
//                             'Mulai Lesson!',
//                             style: GoogleFonts.poppins(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(25),
//               child: Container(
//                 height: 450,
//                 decoration: BoxDecoration(
//                   color: Colors.purple,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Image.asset("assets/bab5.webp", width: 150),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 20,
//                         left: 20,
//                         right: 20,
//                       ),
//                       child: Text(
//                         "Lesson 5: Use English in Real Life",
//                         style: GoogleFonts.poppins(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 50,
//                         right: 50,
//                         top: 10,
//                       ),
//                       child: Text(
//                         "Mengaplikasikan Bahasa Inggris dalam situasi kehidupan nyata",
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.poppins(
//                           fontSize: 16,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.star, color: Colors.white),
//                           Text(
//                             "${bab5Progress.where((e) => e).length}/5",
//                             style: GoogleFonts.poppins(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           Text(
//                             "/5",
//                             style: GoogleFonts.poppins(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 30,
//                         left: 40,
//                         right: 40,
//                       ),
//                       child: SizedBox(
//                         width: 300,
//                         height: 50,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const Bab5(),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.purple,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: Text(
//                             'Mulai Lesson!',
//                             style: GoogleFonts.poppins(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
