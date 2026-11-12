/*
Jogo da Velha (Lista e matrizes) Dado um tabuleiro representado como uma matriz 3x3, verifique o estado atual do jogo:
- Cada casa do tabuleiro só pode ter 3 valores: 'X', 'O', ou ' ' (espaço).
- X ou O venceu: se um dos dois marcou 3 quadrados seguidos.
- jogando: se ainda há casas a jogar e nenhum jogador venceu.
- empate: se não há mais casas a jogar e nenhum jogador venceu.
- (desafio) empate antecipado: ainda há casas a jogar, mas não é mais possível ninguém vencer.
Use os valores predefinidos para testar, não faça entrada de dados.
*/

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
  // TODO: Apague a linha abaixo e implemente a sua lógica
  throw UnimplementedError();
}

void main() {
  for (var tabuleiro in [
    jogando1,
    jogando2,
    vencedorX,
    vencedorO,
    empate,
    // empateAntecipado, // Descomente esta linha para tentar o desafio
  ]) {
    print(resultado(tabuleiro));
  }
}