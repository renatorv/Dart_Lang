import 'Conta.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

///
/// Classes => Objetos
/// Variaveis => atributos
/// Funcoes => metodos
///

void main() {
  print('07.0) Classes/Objetos\n');

  Conta conta = Conta();

  print('Nome.: ${conta.nome} \nNº Conta.: ${conta.numeroConta} \nSaldo.: ${conta.consultaSaldo()} \n');

  conta.calcularSalario(950, 150, 2);

  conta.depositar(150);

  conta.sacar(50);

  print('\n');

  Pessoa pessoa1 = new Pessoa();

  pessoa1.nome = 'Renato';
  pessoa1.idade = 41;

  print('Nome.: ${pessoa1.nome} idade.: ${pessoa1.idade} \n');

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Neide';
  pessoa2.idade = 42;

  print('Nome.: ${pessoa2.nome} idade.: ${pessoa2.idade} \n');

  Usuario usu = Usuario();
  usu.senha = '12345';
  usu.usuario = 'renato@gmail.com';

  usu.autenticar();

  print('\nOPERADOR EM CASCATA\n');
  // permite emitir várias chamadas por meio de um objeto
  var pessoa3 = Pessoa();

  pessoa3
    ..nome = 'Neuza'
    ..idade = 60
    ..info();
}
