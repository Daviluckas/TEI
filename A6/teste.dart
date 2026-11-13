import 'dart:ffi';
import 'dart:io';

void main() {
  String senha = 'abc9';
  print('Senha válida?');
  bool temNumeros = false;
  for (int n = 0; n <= 9; n++) {
    temNumeros = senha.contains(n.toString());
  }
  print(temNumeros);
}
