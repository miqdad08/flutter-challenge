import 'package:flutter/material.dart';
import 'profile_page.dart';

class MahasiswaFormPage extends StatefulWidget {
  @override
  _MahasiswaFormPageState createState() => _MahasiswaFormPageState();
}

class _MahasiswaFormPageState extends State<MahasiswaFormPage> {
  final nim = TextEditingController();
  final nama = TextEditingController();
  final jurusan = TextEditingController();

  String gender = 'Laki-laki';
  bool organisasi = false;

  Map<String, bool> hobi = {
    'Membaca': false,
    'Gaming': false,
    'Coding': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Mahasiswa')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(controller: nim, decoration: InputDecoration(labelText: 'NIM')),
            TextField(controller: nama, decoration: InputDecoration(labelText: 'Nama')),
            TextField(controller: jurusan, decoration: InputDecoration(labelText: 'Jurusan')),

            SizedBox(height: 10),

            Text('Jenis Kelamin'),
            RadioListTile(
              value: 'Laki-laki',
              groupValue: gender,
              onChanged: (v) => setState(() => gender = v.toString()),
              title: Text('Laki-laki'),
            ),
            RadioListTile(
              value: 'Perempuan',
              groupValue: gender,
              onChanged: (v) => setState(() => gender = v.toString()),
              title: Text('Perempuan'),
            ),

            Text('Hobi'),
            ...hobi.keys.map((key) {
              return CheckboxListTile(
                title: Text(key),
                value: hobi[key],
                onChanged: (v) {
                  setState(() {
                    hobi[key] = v!;
                  });
                },
              );
            }).toList(),

            SwitchListTile(
              value: organisasi,
              title: Text('Aktif Organisasi'),
              onChanged: (v) => setState(() => organisasi = v),
            ),

            ElevatedButton(
              onPressed: () {
                final selectedHobi = hobi.entries
                    .where((e) => e.value)
                    .map((e) => e.key)
                    .toList();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProfileMahasiswaPage(
                      nim: nim.text,
                      nama: nama.text,
                      jurusan: jurusan.text,
                      gender: gender,
                      hobi: selectedHobi,
                      organisasi: organisasi,
                    ),
                  ),
                );
              },
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}