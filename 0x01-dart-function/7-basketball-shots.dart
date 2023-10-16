int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = (teamA['Free Throw'] ?? 0) + (teamA['2 Pointer'] ?? 0) * 2 + (teamA['3 Pointer'] ?? 0) * 3;
  int teamBPoints = (teamB['Free Throw'] ?? 0) + (teamB['2 Pointer'] ?? 0) * 2 + (teamB['3 Pointer'] ?? 0) * 3;

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
