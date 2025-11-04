import 'package:flutter/material.dart';

void main() {
  runApp(const LanguageInstituteApp());
}

class LanguageInstituteApp extends StatelessWidget {
  const LanguageInstituteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Institute',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> languages = [
      'English',
      'Spanish',
      'French',
      'German',
      'Mandarin Chinese',
      'Japanese',
      'Italian',
      'Russian',
      'Arabic',
      'Portuguese',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Language Institute'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            elevation: 4.0,
            child: ListTile(
              leading: const Icon(Icons.language, color: Colors.blue),
              title: Text(languages[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Placeholder for navigation to a language details screen
              },
            ),
          );
        },
      ),
    );
  }
}
