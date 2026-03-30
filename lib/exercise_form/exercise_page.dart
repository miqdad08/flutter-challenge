import 'package:flutter/material.dart';

class ExercisePage extends StatefulWidget {
  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  final namaController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String selectedBahasa = 'Dart';
  String status = 'Aktif';

  bool isEnabled = false;
  String result = '';

  void validateForm() {
    setState(() {
      isEnabled =
          namaController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();

    namaController.addListener(validateForm);
    emailController.addListener(validateForm);
    passwordController.addListener(validateForm);
  }

  @override
  void dispose() {
    namaController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  void submit() {
    setState(() {
      result = '''
      Nama: ${namaController.text}
      Email: ${emailController.text}
      Password: ${passwordController.text}
      Bahasa: $selectedBahasa
      Status: $status
      ''';
    });

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latihan Form')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),

            SizedBox(height: 16),

            DropdownButton<String>(
              value: selectedBahasa,
              items: [
                'Dart',
                'Python',
                'Java',
                'PHP',
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (value) {
                setState(() {
                  selectedBahasa = value!;
                });
              },
            ),

            Column(
              children: ['Aktif', 'Cuti', 'Lulus'].map((e) {
                return RadioListTile(
                  title: Text(e),
                  value: e,
                  groupValue: status,
                  onChanged: (value) {
                    setState(() {
                      status = value.toString();
                    });
                  },
                );
              }).toList(),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: isEnabled ? submit : null,
              child: Text('Submit'),
            ),

            SizedBox(height: 20),

            // hasil tampil di UI
            if (result.isNotEmpty) Text(result, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
