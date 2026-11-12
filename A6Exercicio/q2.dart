
const List<List<String>> empate = [
  ['X', 'O', 'X'],
  ['X', 'X', 'O'],
  ['O', 'X', 'O'],
];

const List<List<String>> empateAntecipado = [
  ['X', 'O', 'X'],
  [' ', 'X', ' '],
  ['O', 'X', 'O'],
];

const List<List<String>> jogando1 = [
  [' ', ' ', ' '],
  [' ', ' ', ' '],
  [' ', ' ', ' '],
];

const List<List<String>> jogando2 = [
  ['X', ' ', 'X'],
  [' ', 'O', ' '],
  ['O', ' ', 'X'],
];

const List<List<String>> vencedorX = [
  ['O', 'O', 'X'],
  [' ', 'X', ' '],
  ['X', ' ', ' '],
];

const List<List<String>> vencedorO = [
  ['X', 'O', ' '],
  [' ', 'O', 'X'],
  ['X', 'O', ' '],
];

String resultado(List<List<String>> tabuleiro) {
  for (int i = 0; i < 3; i++) {
    if (tabuleiro[i][0] == tabuleiro[i][1] &&
        tabuleiro[i][1] == tabuleiro[i][2] &&
        tabuleiro[i][0] != ' ') {
      return tabuleiro[i][0];
    }

    if (tabuleiro[0][i] == tabuleiro[1][i] &&
        tabuleiro[1][i] == tabuleiro[2][i] &&
        tabuleiro[0][i] != ' ') {
      return tabuleiro[0][i];
    }
  }

  if (tabuleiro[0][0] == tabuleiro[1][1] &&
      tabuleiro[1][1] == tabuleiro[2][2] &&
      tabuleiro[0][0] != ' ') {
    return tabuleiro[0][0];
  }

  if (tabuleiro[0][2] == tabuleiro[1][1] &&
      tabuleiro[1][1] == tabuleiro[2][0] &&
      tabuleiro[0][2] != ' ') {
    return tabuleiro[0][2];
  }

  bool vazio = false;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (tabuleiro[i][j] == ' ') {
        vazio = true;
      }
    }
  }

  if (vazio) {
    return 'jogando';
  } else {
    return 'empate';
  }
}

void main() {
  for (var tabuleiro in [
    jogando1,
    jogando2,
    vencedorX,
    vencedorO,
    empate,
  ]) {
    print(resultado(tabuleiro));
  }
}
