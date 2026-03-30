import 'package:flutter/material.dart';

class ProfileMahasiswaPage extends StatelessWidget {
  final String nim;
  final String nama;
  final String jurusan;
  final String gender;
  final List<String> hobi;
  final bool organisasi;

  ProfileMahasiswaPage({
    required this.nim,
    required this.nama,
    required this.jurusan,
    required this.gender,
    required this.hobi,
    required this.organisasi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil Mahasiswa')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('NIM: $nim'),
                Text('Nama: $nama'),
                Text('Jurusan: $jurusan'),
                Text('Gender: $gender'),
                Text('Hobi: ${hobi.join(', ')}'),
                Text('Organisasi: ${organisasi ? "Ya" : "Tidak"}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}