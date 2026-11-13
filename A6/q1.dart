import 'dart:io';

void main() {
  print("Digite a senha:");
  String senha = stdin.readLineSync() ?? '';
  bool tem8OuMais = senha.length >= 8;
  bool temMaiusculas = senha != senha.toLowerCase();
  bool temMinusculas = senha != senha.toUpperCase();

  /*
  bool temNumeros = false;
  for (int n = 0; n < 10; n++) {
    temNumeros |= senha.contains(n.toString());
  }
   */
  print('Senha válida?');
  print(tem8OuMais && temMaiusculas && temMinusculas);
}
