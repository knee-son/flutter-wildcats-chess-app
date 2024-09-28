class Participant {
  final String id;
  final String name;
  int score;

  Participant({required this.id, required this.name, this.score = 0});
}

class Match {
  final Participant player1;
  final Participant player2;
  final int round;
  int? player1Score;
  int? player2Score;

  Match({
    required this.player1,
    required this.player2,
    required this.round,
    this.player1Score,
    this.player2Score,
  });
}

class Tournament {
  List<Participant> players = [];
  List<Match> matches = [];
}
