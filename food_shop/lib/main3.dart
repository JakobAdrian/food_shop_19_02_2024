import 'package:flutter/material.dart';

// Vorgehen:
//  Skelett der App erstellen
//  Datenmodell erstellen
//  Anzeige für Datenmodell erstellen

void main() {
  runApp(const QuickNotesApp());
}

// App Klasse
class QuickNotesApp extends StatelessWidget {
  const QuickNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Notes',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const QuickNotesScreen(),
    );
  }
}

// Screen Klasse
class QuickNotesScreen extends StatefulWidget {
  const QuickNotesScreen({super.key});

  @override
  _QuickNotesScreenState createState() => _QuickNotesScreenState();
}

class _QuickNotesScreenState extends State<QuickNotesScreen> {
  // Liste, welche unsere Notizen (Datenmodelle) speichert
  final List<Note> _notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quick Notes'),
      ),
      // Liste der Widgets, welche die Notizen darstellen
      body: ListView.builder(
        itemCount: _notes.length,
        itemBuilder: (context, index) {
          return NoteItem(note: _notes[index]);
        },
      ),
      // FAB um Notiz hinzuzufügen
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNote(),
        child: const Icon(Icons.add),
      ),
    );
  }

  // Öffnet Dialog. Methode muss im Widget sein, da andernfalls nicht
  // auf _notes zugegriffen werden kann
  void _addNote() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String title = '';
        String text = '';

        return AlertDialog(
          title: const Text('Add Note'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                onChanged: (value) {
                  title = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Text'),
                onChanged: (value) {
                  text = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _notes.add(Note(title: title, text: text));
                });
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}

// Widget um unsere Datenklasse darzustellen. Es ist Stateless, weil wir den
// State im Widget nicht verändern. Wir managen es auf der Ebene des Screens.
class NoteItem extends StatelessWidget {
  final Note note;

  const NoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(note.title),
      subtitle: Text(note.text),
    );
  }
}

// Unser Datenmodell
class Note {
  final String title;
  final String text;

  Note({
    required this.title,
    required this.text,
  });
}