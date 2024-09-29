import 'package:flutter/material.dart';

class TournamentCreationModal extends StatefulWidget {
  const TournamentCreationModal({super.key});

  @override
  _TournamentCreationModalState createState() =>
      _TournamentCreationModalState();
}

class _TournamentCreationModalState extends State<TournamentCreationModal> {
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
                  padding: EdgeInsets.all(16.0),
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Select Tournament Type',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Round Robin'),
                          Switch(
                            value: isRoundRobin,
                            onChanged: (bool value) {
                              setState(() {
                                isRoundRobin = value;
                              });
                            },
                          ),
                          Text('Swiss System'),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          // Handle create action
                          Navigator.pop(context);
                        },
                        child: Text('Create'),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text('Open Tournament Modal'),
        ),
      ),
    );
  }
}
