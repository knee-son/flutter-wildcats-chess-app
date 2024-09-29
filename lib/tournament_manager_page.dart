import 'package:flutter/material.dart';
import 'package:wildcats_chess_app/swiss_system_model.dart';

class TournamentManagerPage extends StatefulWidget {
  const TournamentManagerPage({super.key});

  @override
  TournamentManagerPageState createState() => TournamentManagerPageState();
}

class TournamentManagerPageState extends State<TournamentManagerPage> {
  List<Participant> participants = [
    Participant(id: '001', name: 'Alice'),
    Participant(id: '002', name: 'Bob'),
  ];

  @override
  void initState() {
    super.initState();
    // Print participants when the state is initialized
    print('Participants loaded: $participants');
  }

  void increaseScore(Participant participant) {
    setState(() {
      participant.score += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Participants'),
      ),
      body: ListView.builder(
        itemCount: participants.length,
        itemBuilder: (context, index) {
          Participant participant = participants[index];
          return ListTile(
            title: Text(participant.name),
            subtitle: Text('Score: ${participant.score}'),
            trailing: ElevatedButton(
              onPressed: () => increaseScore(participant),
              child: const Text('Increase Score'),
            ),
          );
        },
      ),
    );
  }
}
