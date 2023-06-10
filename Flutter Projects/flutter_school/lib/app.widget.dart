import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School',
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                margin: const EdgeInsets.all(0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(children: [
                    const CircleAvatar(child: Text('J')),
                    const SizedBox(width: 8),
                    const Text(
                      'Junior Fonseca',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {},
                    )
                  ]),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Minhas estatísticas',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              Row(children: const [
                Icon(Icons.list),
                SizedBox(width: 8),
                Text('Total de notas: '),
                Text('0'),
              ]),
              Row(children: const [
                Icon(Icons.verified),
                SizedBox(width: 8),
                Text('Concluídas: '),
                Text('0'),
              ]),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              const Text(
                'Minhas estatísticas',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text('Tema escuro'),
                  const Spacer(),
                  Switch(value: true, onChanged: (val) {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
