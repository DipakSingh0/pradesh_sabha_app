// Example page widgets - replace with your actual pages
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('सूचना')),
      body: const Center(child: Text('सूचना पेज')),
    );
  }
}

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

// Add similar classes for all other pages...
class BillPage extends StatelessWidget {
  const BillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('विधेयक')),
      body: const Center(child: Text('विधेयक पेज')),
    );
  }
}

// Pradesh Sabha Page
class PradeshSabhaPage extends StatelessWidget {
  const PradeshSabhaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('प्रदेश सभा')),
      body: const Center(child: Text('प्रदेश सभा पेज')),
    );
  }
}

// Member Page
class MemberPage extends StatelessWidget {
  const MemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('प्रदेश सभा सदस्य')),
      body: const Center(child: Text('प्रदेश सभा सदस्य पेज')),
    );
  }
}

// // Secretariat Page
// class SecretariatPage extends StatelessWidget {
//   const SecretariatPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('प्रदेश सभा सचिवालय')),
//       body: const Center(child: Text('प्रदेश सभा सचिवालय पेज')),
//     );
//   }
// }

// Meeting Page
class MeetingPage extends StatelessWidget {
  const MeetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('सभा बैठक')),
      body: const Center(child: Text('सभा बैठक पेज')),
    );
  }
}

// Rules Page
class RulesPage extends StatelessWidget {
  const RulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ऐन, नियम')),
      body: const Center(child: Text('ऐन, नियम पेज')),
    );
  }
}

// Programs Page
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

// Gallery Page
class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ग्यालेरी')),
      body: const Center(child: Text('ग्यालेरी पेज')),
    );
  }
}

// Forum Page
class ForumPage extends StatelessWidget {
  const ForumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('फारम')),
      body: const Center(child: Text('फारम पेज')),
    );
  }
}

// Contact Page
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('सम्पर्क')),
      body: const Center(child: Text('सम्पर्क पेज')),
    );
  }
}
