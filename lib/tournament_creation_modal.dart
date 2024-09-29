import 'package:flutter/material.dart';

class TournamentCreationModal extends StatefulWidget {
  const TournamentCreationModal({super.key});

  @override
  TournamentCreationModalState createState() => TournamentCreationModalState();
}

class TournamentCreationModalState extends State<TournamentCreationModal> {
  bool isRoundRobin = true; // Toggle between 'Round Robin' and 'Swiss System'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Select Tournament Type',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Round Robin'),
                          Switch(
                            value: isRoundRobin,
                            onChanged: (bool value) {
                              setState(() {
                                isRoundRobin = value;
                              });
                            },
                          ),
                          const Text('Swiss System'),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          // Handle create action
                          Navigator.pop(context);
                        },
                        child: const Text('Create'),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: const Text('Open Tournament Modal'),
        ),
      ),
    );
  }
}
