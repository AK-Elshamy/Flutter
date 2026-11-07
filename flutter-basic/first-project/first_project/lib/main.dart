import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GroupListViewDemo(),
    ),
  );
}

class GroupListViewDemo extends StatelessWidget {
  const GroupListViewDemo({super.key});

  final List<Map<String, dynamic>> teams = const [
    {
      'team': 'Team A',
      'members': [
        {'name': 'Klay Lewis', 'initials': 'KL', 'color': Colors.pink},
        {'name': 'Ensan Woodard', 'initials': 'EW', 'color': Colors.purple},
        {'name': 'River Bains', 'initials': 'RB', 'color': Colors.blueGrey},
      ],
    },
    {
      'team': 'Team B',
      'members': [
        {'name': 'Toyah Downs', 'initials': 'TD', 'color': Colors.red},
        {'name': 'Tyla Kane', 'initials': 'TK', 'color': Colors.teal},
      ],
    },
    {
      'team': 'Team C',
      'members': [
        {'name': 'Marcus Romero', 'initials': 'MR', 'color': Colors.orange},
        {'name': 'Farrah Parkes', 'initials': 'FP', 'color': Colors.deepPurple},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group List View Demo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: teams.length,

        itemBuilder: (context, index) {
          final team = teams[index];
          final members = team['members'] as List;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Team title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Text(
                  team['team'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),

              // Members cards
              ...members.map((member) {
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: member['color'],
                      child: Text(
                        member['initials'],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),

                    title: Text(
                      member['name'],
                      style: const TextStyle(fontSize: 13),
                    ),

                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                );
              }),
            ],
          );
        },
      ),
    );
  }
}
