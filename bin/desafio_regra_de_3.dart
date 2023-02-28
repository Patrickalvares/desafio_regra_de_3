import 'dart:io';

void main() {
  print(
      "A regra de três, na matemática, é uma forma de se descobrir uma quantidade que tenha para outra conhecida a mesma relação que têm entre si entre outros dois valores numéricos conhecidos.\n");
  menu();
}

void menu() {
  String valor_1 = '1° valor';
  String valor_2 = '2° valor';
  String valor_3 = '3° valor';
  String valor_4 = 'X';
  void resultado() {
    print('$valor_1 está para $valor_2 \nAssim como');
    print('$valor_3 está para $valor_4\n');
  }

  resultado();
  stdout.writeln("Qual o 1° valor? ");
  valor_1 = stdin.readLineSync()!;
  print("\x1B[2J\x1B[0;0H");
  resultado();
  stdout.writeln("Qual o 2° valor? ");
  valor_2 = stdin.readLineSync()!;
  print("\x1B[2J\x1B[0;0H");
  resultado();
  stdout.writeln("Qual o 3° valor? ");
  valor_3 = stdin.readLineSync()!;
  print("\x1B[2J\x1B[0;0H");

  valor_4 =
      ((double.parse(valor_3) * double.parse(valor_2)) / double.parse(valor_1))
          .toString();
  print('Seu X equivale a $valor_4\n');
  resultado();
  print('\n ...reiniciando... \n');
  menu();
}
