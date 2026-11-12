
void main() {
  String senha = 'ciro2026';
  bool numero = false;
  bool maiuscula = false;
  bool minuscula = false;

  do {
    for (int i = 0; i < senha.length; i++) {
      if (senha[i].contains(RegExp(r'[0-9]'))) {
        numero = true;
      }

      if (senha[i].contains(RegExp(r'[A-Z]'))) {
        maiuscula = true;
      }

      if (senha[i].contains(RegExp(r'[a-z]'))) {
        minuscula = true;
      }
    }

    if (senha.length < 8 || !numero || !maiuscula || !minuscula) {
      print('Senha inválida');
      break;
    } else {
      print('Senha válida');
    }

  } while (senha.length < 8);
}
