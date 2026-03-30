import 'package:flutter/material.dart';

class EventFormPage extends StatefulWidget {
  @override
  _EventFormPageState createState() => _EventFormPageState();
}

class _EventFormPageState extends State<EventFormPage> {
  final nama = TextEditingController();
  final email = TextEditingController();
  final univ = TextEditingController();

  String gender = 'Laki-laki';
  String bidang = 'Mobile Development';
  bool setuju = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Event')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(
              controller: nama,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: univ,
              decoration: InputDecoration(labelText: 'Universitas'),
            ),

            SizedBox(height: 10),

            Text('Jenis Kelamin'),
            RadioListTile(
              title: Text('Laki-laki'),
              value: 'Laki-laki',
              groupValue: gender,
              onChanged: (v) => setState(() => gender = v.toString()),
            ),
            RadioListTile(
              title: Text('Perempuan'),
              value: 'Perempuan',
              groupValue: gender,
              onChanged: (v) => setState(() => gender = v.toString()),
            ),

            DropdownButton<String>(
              value: bidang,
              items: [
                'Mobile Development',
                'Web Development',
                'Data Science',
                'AI',
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (v) => setState(() => bidang = v!),
            ),

            CheckboxListTile(
              value: setuju,
              title: Text('Saya bersedia mengikuti seluruh rangkaian acara'),
              onChanged: (v) => setState(() => setuju = v!),
            ),

            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('Data'),
                    content: Text(
                      'Nama: ${nama.text}\n'
                      'Email: ${email.text}\n'
                      'Univ: ${univ.text}\n'
                      'Univ: $gender\n'
                      'Bidang: $bidang',
                    ),
                  ),
                );
              },
              child: Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
