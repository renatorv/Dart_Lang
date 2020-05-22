import 'dart:math';

class Conta {
  String nome = 'Renato';
  int numeroConta = new Random().nextInt(10000 + 1);
  double saldo = 0;

  double consultaSaldo() => this.saldo;

  void depositar(double valorDeposito) {
    this.saldo = this.saldo + valorDeposito;

    print('Depósito.: $valorDeposito Saldo.: $saldo');
  }

  void sacar(double valorSaque) {
    this.saldo = this.saldo - valorSaque;

    print('Saque.: $valorSaque Saldo.: $saldo');
  }

  double desconto(int faltas) => (faltas > 1) ? 0.8 : (faltas == 1) ? 0.9 : 0;

  void calcularSalario(double salario, double bonus, int faltas) {
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;

    print('Salário.: $salarioCalculado Bonus.: $bonus Faltas.: $faltas');
  }
}
