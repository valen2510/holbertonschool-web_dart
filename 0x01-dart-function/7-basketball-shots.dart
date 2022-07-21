num getPoints(Map team) {
  num points = 0;
  team.forEach((key, value) {
    if (key == 'Free throws') {
      points += value;
    } else if (key == '2 pointer') {
      points += value * 2;
    } else if (key == '3 pointer') {
      points += value * 3;
    }
  });
  return points;
}

num whoWins(Map teamA, Map teamB) {
  num teamAPoints = getPoints(teamA);
  num teamBPoints = getPoints(teamB);
  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
