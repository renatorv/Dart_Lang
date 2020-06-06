import 'pessoa.dart';

///
/// Inicializada apenas quando acessada em tempo de execução, deve ser declarada!
/// Em coleções final nem todo o conteúdo será final!
///

void main() {
  print('10.2) Modificadores Final\n');

  // Objeto em queda livre, leva 5s para chegar ao solo! Qual a velocidade máxima do objeto?

  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; // v = g * t;
  print('Velocidade máxima.: ${velocidade} m/s\n');

  for (int i = 1; i <= 3; i++) {
    final indice = i;
    print('contagem.: $indice');
  }

  var pessoa = Pessoa('Renato', ['Neide', 'Julia']);

  pessoa.nome = 'Renato Alves';
  //pessoa.familiares = []; // como a variavel pessoa.familiares foi definida em tempo de execução na criação do objeto, não é possível alterá-la!
  print('nome.: ${pessoa.nome}\nFamiliares.: ${pessoa.familiares}');

  print('');
}
