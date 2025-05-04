import 'package:flutter/material.dart';

class CommitteePage extends StatelessWidget {
  const CommitteePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('समिति')),
      body: const Center(child: Text('समिति पेज')),
    );
  }
}

class ProgramsPage extends StatelessWidget {
  const ProgramsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('प्रदेश सभाका कार्यक्रमहरू')),
      body: const Center(child: Text('प्रदेश सभाका कार्यक्रमहरू पेज')),
    );
  }
}
