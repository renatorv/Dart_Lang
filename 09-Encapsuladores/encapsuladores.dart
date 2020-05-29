import 'Conta.dart';
import 'usuario.dart';

///
/// Encapsuladores são usados para proteger os atributos e variáveis
/// Get é usado para acessar e o Set é usado para alterar
/// Atributos ou variáveis com underline são privados. Ex.: _saldo
///

void main() {
  print('09.0) ENCAPSULADORES\n');

  var usuario = Usuario('Renato', 'abc123');

  usuario
    ..senha = '159753'
    ..alteracao = true
    ..senha = '159753';

  print('nome.: ${usuario.nome} senha.: ${usuario.senha}\n');

  var conta = Conta('Neide Siqueira');

  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;

  print('');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print('');

  conta
    ..saque = 950
    ..saque = 850;

  print('${conta.informacao}\n');

  Conta contaVip = Conta.vip('Renato Alves', limite: 12500);
  contaVip
    ..deposito = 15000
    ..saque = 15000
    ..limite = 15000
    ..saque = 15000;

  print('${contaVip.informacao}\n');
}
