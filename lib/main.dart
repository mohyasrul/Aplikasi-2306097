import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const Icon(Icons.home),
        title: const Text("Aplikasi Ter Gokil Se-Asia Tenggara"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.red, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.airline_seat_flat_sharp,
                    size: 40.0,
                    color: Color.fromARGB(255, 2, 61, 4),
                  ),
                  Text(
                    "Artikel Baru",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/ayam.png',
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Geger! Ayam Goreng di Depok Mendadak Hidup Lagi...",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Warga Depok kembali dikejutkan oleh kejadian di luar nalar. Sebuah paha ayam goreng tepung yang sudah siap santap di atas meja makan mendadak berdiri tegak dan melakukan gerakan pemanasan. Menurut saksi mata, ayam tersebut menolak dimakan dan justru menuntut diberikan helm bogo serta jaket hijau karena merasa terpanggil untuk mengejar target poin harian sebagai driver ojol. 'Tadi pas mau saya gigit, dia bilang: Sabar pak, lagi ada orderan ke Bekasi!', ujar pemilik rumah yang masih gemetaran sambil memegang garpu. Hingga berita ini diturunkan, ayam goreng tersebut dilaporkan sedang terjebak macet di daerah Margonda dan menolak dicocol sambal karena alasan profesionalitas kerja. [Baca Selengkapnya]",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text(
                    'Komentar (7)',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(height: 10),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 20,
                                color: Color.fromARGB(255, 38, 168, 220),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "mR HILMI a.k.a Rektor GANS",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 168, 220),
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Edan Pisun!! Ayamnya bisa ngomong, bisa ngojek lagi. Mantap jiwa! 🤣",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 20,
                                color: Color.fromARGB(255, 38, 168, 220),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "User@12358072001",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 168, 220),
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Baca selengkapnya gak bisa di klik woyyyyy!!!",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 20,
                                color: Color.fromARGB(255, 38, 168, 220),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "Superman vs Prabowo",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 168, 220),
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "APLIKASI SAMPAH!!! GABISA KLIK APA APA!! T4!",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 20,
                                color: Color.fromARGB(255, 38, 168, 220),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "fufufafa",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 168, 220),
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "HIDUPPP JOKOWIII !!!!",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 20,
                                color: Color.fromARGB(255, 38, 168, 220),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "Jam_Kosong123",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 168, 220),
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Berita hoak",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 20,
                                color: Color.fromARGB(255, 38, 168, 220),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "Hafilalibaslas",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 168, 220),
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Ngomongin apa sihh",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 20,
                                color: Color.fromARGB(255, 38, 168, 220),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "Yudi Keling Jok Markojos",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 168, 220),
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Dasar WNI",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
